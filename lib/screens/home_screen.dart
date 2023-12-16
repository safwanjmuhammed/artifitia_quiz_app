import 'package:artifitia_quiz_app/components/options_box.dart';
import 'package:artifitia_quiz_app/components/progress_bar.dart';
import 'package:artifitia_quiz_app/models/quiz_model.dart';
import 'package:artifitia_quiz_app/router/routes.dart';
import 'package:artifitia_quiz_app/screens/correct_screen.dart';
import 'package:artifitia_quiz_app/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ApiService service = ApiService();
  List<QuizModel> quizData = [];

  void getQuizData() async {
    final data = await service.fetchQuizData();
    setState(() {
      quizData = data;
    });
  }

  @override
  void initState() {
    super.initState();
    getQuizData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: quizData.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 40.h)),
                    const ProgressBar(),
                    Padding(padding: EdgeInsets.only(top: 40.h)),
                    Text(
                      quizData[0].question,
                      style: GoogleFonts.kanit(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Padding(padding: EdgeInsets.only(top: 15.h)),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.correctScreen, arguments: {
                                  'question': quizData[index].question,
                                  'options': quizData[index].options
                                });
                              },
                              child: OptionsBox(
                                options: quizData[index].options,
                                index: index,
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
