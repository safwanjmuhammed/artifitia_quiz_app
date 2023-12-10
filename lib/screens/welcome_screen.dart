import 'package:artifitia_quiz_app/screens/constants/const_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/welcome.png'),
            Container(
              alignment: Alignment.center,
              height: 53,
              width: 158,
              decoration: const BoxDecoration(
                  color: Color(0XFF8514E1),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Text('Start Quiz'),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                      height: 1.2,
                    ),
                    children: [
                      TextSpan(
                          text: 'powered by\n',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: CustomColor.welcomeTextColor)),
                      TextSpan(
                          text: 'www.artifitia.com',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: CustomColor.welcomeTextColor))
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
