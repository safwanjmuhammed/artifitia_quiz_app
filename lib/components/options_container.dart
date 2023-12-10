import 'package:flutter/material.dart';

class OptionsBox extends StatefulWidget {
  const OptionsBox({super.key});

  @override
  State<OptionsBox> createState() => _OptionsBoxState();
}

class _OptionsBoxState extends State<OptionsBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 317,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(28)));
  }
}
