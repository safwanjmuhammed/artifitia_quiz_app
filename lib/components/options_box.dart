import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionsBox extends StatefulWidget {
  final int index;

  final String options;
  const OptionsBox({
    super.key,
    required this.options,
    required this.index,
  });

  @override
  State<OptionsBox> createState() => _OptionsBoxState();
}

class _OptionsBoxState extends State<OptionsBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(28)),
      //options
      child: Text(
        '${widget.index + 1}. ${widget.options}',
        style: GoogleFonts.kanit(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
