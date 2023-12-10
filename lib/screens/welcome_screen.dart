import 'package:artifitia_quiz_app/screens/constants/const_color.dart';
import 'package:artifitia_quiz_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final mSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColor.scaffoldColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset('assets/images/welcome.png'),
            ),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                height: 53,
                width: 158,
                decoration: const BoxDecoration(
                    color: Color(0XFF8514E1),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Text(
                  'Start Quiz',
                  style: GoogleFonts.kanit(color: Colors.white, fontSize: 18),
                ),
              ),
              onTap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen())),
            ),

            // SizedBox(
            //   height: mSize.height,
            // ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: const TextStyle(
                    height: 1.5,
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
            )
          ],
        ),
      ),
    );
  }
}
