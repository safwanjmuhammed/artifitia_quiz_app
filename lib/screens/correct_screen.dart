import 'package:artifitia_quiz_app/components/options_box.dart';
import 'package:artifitia_quiz_app/components/progress_bar.dart';
import 'package:artifitia_quiz_app/models/options_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CorrectScreen extends StatefulWidget {
  const CorrectScreen({
    super.key,
  });

  @override
  State<CorrectScreen> createState() => _CorrectScreenState();
}

class _CorrectScreenState extends State<CorrectScreen> {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments = Get.arguments;
    final String question = arguments['question'];
    final List<OptionsModel> options = arguments['options'];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 40.h)),
              const ProgressBar(),
              Padding(padding: EdgeInsets.only(top: 40.h)),
              Text(
                question,
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
                        onTap: () {},
                        child: OptionsBox(
                          options: options,
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
