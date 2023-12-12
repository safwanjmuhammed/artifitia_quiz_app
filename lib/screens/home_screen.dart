import 'package:artifitia_quiz_app/components/options_box.dart';
import 'package:artifitia_quiz_app/components/progress_bar.dart';
import 'package:artifitia_quiz_app/models/options_model.dart';
import 'package:artifitia_quiz_app/models/quiz_model.dart';
import 'package:artifitia_quiz_app/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ApiService service = ApiService();
  List<QuizModel> quizData = [];
  List<OptionsModel> options = [];

  void getQuizData() async {
    final data = await service.fetchQuizData();
    setState(() {
      quizData = data;
    });
    for (var element in quizData) {
      options = element.options;
      print(options[0].text);
    }
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
                    const Padding(padding: EdgeInsets.only(top: 40)),
                    const ProgressBar(),
                    const Padding(padding: EdgeInsets.only(top: 40)),
                    Text(
                      quizData[0].question,
                      style: GoogleFonts.kanit(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context, int index) {
                          print(options.length);
                          return Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: GestureDetector(
                              onTap: () {
                                print(index);
                                print(quizData[index].options[index].text);
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
