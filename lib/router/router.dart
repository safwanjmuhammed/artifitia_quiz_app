import 'package:artifitia_quiz_app/router/routes.dart';
import 'package:artifitia_quiz_app/screens/correct_screen.dart';
import 'package:artifitia_quiz_app/screens/home_screen.dart';
import 'package:artifitia_quiz_app/screens/welcome_screen.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> get route {
  return [
    GetPage(name: Routes.welcomeScreen, page: () => const WelcomeScreen()),
    GetPage(name: Routes.homeScreen, page: () => const HomeScreen()),
    GetPage(name: Routes.correctScreen, page: () => const CorrectScreen())
  ];
}
