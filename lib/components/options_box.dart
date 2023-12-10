import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionsBox extends StatefulWidget {
  const OptionsBox({super.key});

  @override
  State<OptionsBox> createState() => _OptionsBoxState();
}

class _OptionsBoxState extends State<OptionsBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      // alignment: Alignment.centerLeft,
      // height: 30,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(28)),
      child: Text(
        '1. Alexander Fleming',
        style: GoogleFonts.kanit(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
