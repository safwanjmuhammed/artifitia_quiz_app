import 'package:artifitia_quiz_app/models/options_model.dart';
import 'package:artifitia_quiz_app/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

class OptionsBox extends StatefulWidget {
  final List<OptionsModel> options;
  final int index;
  const OptionsBox({
    super.key,
    this.options = const [],
    this.index = 0,
  });

  @override
  State<OptionsBox> createState() => _OptionsBoxState();
}

class _OptionsBoxState extends State<OptionsBox> {
  @override
  Widget build(BuildContext context) {
    bool isCorrectscreen = Get.currentRoute.contains(Routes.correctScreen);
    print(isCorrectscreen);
    print(widget.options);

    final children = <Widget>[];
    for (var option in widget.options) {
      children.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(15),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(28)),
          //options
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${widget.index}. ${option.text}',
                style: GoogleFonts.kanit(
                    color: isCorrectscreen ? Colors.red : Colors.white,
                    fontSize: 18.sp),
              ),
            ],
          ),
        ),
      ));
    }
    return Column(children: children);
  }
}
