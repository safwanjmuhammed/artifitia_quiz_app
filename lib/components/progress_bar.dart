import 'package:artifitia_quiz_app/screens/constants/const_color.dart';
import 'package:flutter/material.dart';

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
      width: 317,
      decoration: BoxDecoration(
          color: CustomColor.progressBarMainColor,
          borderRadius: BorderRadius.circular(28)),
    );
  }
}
