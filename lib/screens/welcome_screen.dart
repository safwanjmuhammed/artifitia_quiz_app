import 'package:artifitia_quiz_app/constants/const_color.dart';
import 'package:artifitia_quiz_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    print(mediaQueryData.size.height);
    return Scaffold(
      backgroundColor: CustomColor.scaffoldColor,
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 70),
            Image.asset(
              'assets/images/welcome.png',
              height: 316.h,
              width: 316.w,
            ),
            const Spacer(flex: 10),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                height: 53.h,
                width: 158.w,
                decoration: const BoxDecoration(
                    color: Color(0XFF8514E1),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Text(
                  'Start Quiz',
                  style:
                      GoogleFonts.kanit(color: Colors.white, fontSize: 18.sp),
                ),
              ),
              onTap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen())),
            ),
            const Spacer(flex: 120),
            RichText(
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
                            fontSize: 12.sp,
                            color: CustomColor.welcomeTextColor)),
                    TextSpan(
                        text: 'www.artifitia.com',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp,
                            color: CustomColor.welcomeTextColor))
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
