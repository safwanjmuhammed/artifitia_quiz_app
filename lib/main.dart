import 'package:artifitia_quiz_app/constants/const_color.dart';
import 'package:artifitia_quiz_app/router/router.dart';
import 'package:artifitia_quiz_app/router/routes.dart';
import 'package:artifitia_quiz_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (buildContext, widget) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.welcomeScreen,
          getPages: route,
          theme: ThemeData(
            scaffoldBackgroundColor: CustomColor.scaffoldColor,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const WelcomeScreen(),
        );
      },
    );
  }
}
