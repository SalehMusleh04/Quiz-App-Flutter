import 'package:quiz_app2/models/answer_item_model.dart';

class QuestionItemModel {
  final String title;
  final List<AnswerItemModel> answers;

  const QuestionItemModel({required this.title, required this.answers});
}

List<QuestionItemModel> questions = [
  QuestionItemModel(
    title: "Which programming language is used to build Flutter apps?",
    answers: [
      AnswerItemModel(answer: "Java"),
      AnswerItemModel(answer: "Dart", isTrue: true),
      AnswerItemModel(answer: "Python"),
      AnswerItemModel(answer: "C++"),
    ],
  ),
  QuestionItemModel(
    title: "Which is the largest country in the world by land area?",
    answers: [
      AnswerItemModel(answer: "China"),
      AnswerItemModel(answer: "USA"),
      AnswerItemModel(answer: "Russia", isTrue: true),
      AnswerItemModel(answer: "Canada"),
    ],
  ),
  QuestionItemModel(
    title: "Which country has won the most FIFA World Cups?",
    answers: [
      AnswerItemModel(answer: "Germany"),
      AnswerItemModel(answer: "Argentina"),
      AnswerItemModel(answer: "Brazil", isTrue: true),
      AnswerItemModel(answer: "Italy"),
    ],
  ),
  QuestionItemModel(
    title: "What is the square root of 144?",
    answers: [
      AnswerItemModel(answer: "12", isTrue: true),
      AnswerItemModel(answer: "10"),
      AnswerItemModel(answer: "11"),
      AnswerItemModel(answer: "14"),
    ],
  ),
  QuestionItemModel(
    title: "What is the 'Brain' of the computer called?",
    answers: [
      AnswerItemModel(answer: "RAM"),
      AnswerItemModel(answer: "Hard Drive"),
      AnswerItemModel(answer: "GPU"),
      AnswerItemModel(answer: "CPU", isTrue: true),
    ],
  ),
];
