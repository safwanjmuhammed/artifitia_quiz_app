import 'package:artifitia_quiz_app/models/quiz_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiService {
  String url = 'https://nice-lime-hippo-wear.cyclic.app/api/v1/quiz';

  Future<List<QuizModel>> fetchQuizData() async {
    Dio service = Dio();
    try {
      final response = await service.get(url);
      print(response.data);
      if (response.statusCode == 200) {
        final List<QuizModel> data = [];
        for (var element in response.data) {
          data.add(QuizModel.fromJson(element));
        }
        return data;
      } else {
        print(response.statusCode);
      }
    } on DioException catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
    throw Exception('Failed...!');
  }
}
