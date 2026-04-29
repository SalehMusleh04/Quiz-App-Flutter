import 'package:flutter/material.dart';
import 'package:quiz_app2/models/question_item_model.dart';
import 'package:quiz_app2/widgets/answer_item.dart';
import 'package:quiz_app2/widgets/custom_button.dart';
import 'package:quiz_app2/widgets/question_counter.dart';
import 'package:quiz_app2/widgets/question_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionIndex = 0;
  int answerChosen = -1;
  bool showResult = false;
  int totalScore = 0;
  @override
  Widget build(BuildContext context) {
    int questionNumber = questionIndex + 1;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: !showResult
            ? Column(
                children: [
                  QuestionCounter(
                    currentQuestion: questionNumber,
                    totalQuestions: questions.length,
                  ),
                  QuestionItem(questionTitle: questions[questionIndex].title),
                  Column(
                    children: List.generate(
                      questions[questionIndex].answers.length,
                      (index) => AnswerItem(
                        isAnswerTrue:
                            questions[questionIndex].answers[index].isTrue,
                        answerChosen: answerChosen,
                        onPressed: () {
                          if (answerChosen == -1) {
                            setState(() {
                              answerChosen = index;
                              if (questions[questionIndex]
                                  .answers[index]
                                  .isTrue) {
                                totalScore += 10;
                              }
                            });
                          }
                        },
                        answersList: questions[questionIndex].answers[index],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // CustomButton(
                        //   buttonName: 'Previous',
                        //   isButtonAvailable: questionNumber != 1,
                        //   changeQuestion: (questionNumber != 1)
                        //       ? () {
                        //           setState(() {
                        //             questionIndex--;
                        //           });
                        //         }
                        //       : null,
                        // ),
                        const SizedBox(width: 10),
                        CustomButton(
                          buttonName: 'Next',
                          isButtonAvailable: answerChosen != -1,
                          changeQuestion: () {
                            if ((questionNumber < questions.length) &&
                                answerChosen != -1 &&
                                questionNumber != questions.length) {
                              setState(() {
                                questionIndex++;
                                answerChosen = -1;
                              });
                            } else if ((questionNumber == questions.length) &&
                                answerChosen != -1) {
                              // Go To ShowResult
                              setState(() {
                                showResult = true;
                                answerChosen = -1;
                              });
                            } else {
                              null;
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'CONGRATS 🎉🎉',
                      style: Theme.of(
                        context,
                      ).textTheme.displaySmall!.copyWith(fontSize: 25),
                    ),
                    Text(
                      'Your Total Score is $totalScore / ${(10 * questions.length)}',
                      style: Theme.of(
                        context,
                      ).textTheme.displaySmall!.copyWith(fontSize: 25),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          questionIndex = 0;
                          showResult = false;
                          totalScore = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1c0790),
                      ),
                      child: Text(
                        'Reset Quiz',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
