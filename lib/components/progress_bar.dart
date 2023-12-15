import 'package:artifitia_quiz_app/constants/const_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({super.key});

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: double.infinity,
      decoration: BoxDecoration(
          color: CustomColor.progressBarMainColor,
          borderRadius: BorderRadius.all(Radius.circular(18))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              '40',
              style: GoogleFonts.kanit(fontSize: 15, color: Colors.white),
            ),
          ),
          Container(
            width: 122,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: CustomColor.progressBarColor),
          )
        ],
      ),
    );
  }
}
