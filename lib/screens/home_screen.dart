import 'package:artifitia_quiz_app/components/options_box.dart';
import 'package:artifitia_quiz_app/components/progress_bar.dart';
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
  @override
  void initState() {
    super.initState();
    service.fetchQuizData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 40)),
              const ProgressBar(),
              const Padding(padding: EdgeInsets.only(top: 40)),
              Text(
                'Which plant in our system is know as the Red Plant?',
                style: GoogleFonts.kanit(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, int index) {
                    return const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: OptionsBox(),
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
