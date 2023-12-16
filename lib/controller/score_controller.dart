import 'package:get/get.dart';

class ScoreController extends GetxController {
  RxInt score = 0.obs;

  addScore() {
    score + 10;
    print(score);
  }
}
