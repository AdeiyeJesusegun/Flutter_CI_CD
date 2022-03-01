// ignore_for_file: prefer_initializing_formals

class Question {
  String? questionText;
  bool? answer;
  Question({required String questionText, required bool answer})
      : questionText = questionText,
        answer = answer;
}
