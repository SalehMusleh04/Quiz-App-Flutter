import 'package:quiz_app2/models/answer_item_model.dart';

class QuestionItemModel {
  final String title;
  final List<AnswerItemModel> answers;

  const QuestionItemModel({required this.title, required this.answers});
}

List<QuestionItemModel> questions = [
  QuestionItemModel(
    title:
        "Which is the second longest surah in the Qur'an in terms of the number of verses?",
    answers: [
      AnswerItemModel(answer: "Aal-Imran"),
      AnswerItemModel(answer: "Ash-Shu'ara", isTrue: true),
      AnswerItemModel(answer: "An-Nahl"),
      AnswerItemModel(answer: "An-Nisa"),
    ],
  ),
  QuestionItemModel(
    title:
        "Which of the following surahs begins with disjointed letters (Muqatta'at) and contains a verse of prostration (Sajdah)?",
    answers: [
      AnswerItemModel(answer: "Al-Furqan"),
      AnswerItemModel(answer: "Al-Ankabut"),
      AnswerItemModel(answer: "An-Najm"),
      AnswerItemModel(answer: "An-Naml", isTrue: true),
    ],
  ),
  QuestionItemModel(
    title: "Who killed the Commander of the Faithful, Omar ibn al-Khattab ?",
    answers: [
      AnswerItemModel(answer: "Abu Lu'lu'ah al-Majusi", isTrue: true),
      AnswerItemModel(answer: "Abdullah ibn Saba"),
      AnswerItemModel(answer: "Ubayy ibn Khalaf"),
      AnswerItemModel(answer: "Al-Walid ibn al-Mughirah"),
    ],
  ),
  QuestionItemModel(
    title: 'How many times is the name "Muhammad" mentioned in the Qur\'an?',
    answers: [
      AnswerItemModel(answer: "8"),
      AnswerItemModel(answer: "6"),
      AnswerItemModel(answer: "4", isTrue: true),
      AnswerItemModel(answer: "2"),
    ],
  ),
  QuestionItemModel(
    title: "Which prophet is mentioned the most in the Qur'an?",
    answers: [
      AnswerItemModel(answer: "Eissa"),
      AnswerItemModel(answer: "Mousa", isTrue: true),
      AnswerItemModel(answer: "Ibrahim"),
      AnswerItemModel(answer: "Adam"),
    ],
  ),
];
