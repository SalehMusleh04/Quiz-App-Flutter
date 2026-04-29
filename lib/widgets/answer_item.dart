import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app2/models/answer_item_model.dart';

class AnswerItem extends StatelessWidget {
  final bool isAnswerTrue;
  final int answerChosen;
  final VoidCallback onPressed;
  final AnswerItemModel answersList;
  const AnswerItem({
    super.key,
    required this.isAnswerTrue,
    required this.answerChosen,
    required this.onPressed,
    required this.answersList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onPressed,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: answerChosen == -1
                ? Colors.white
                : (isAnswerTrue ? Colors.green : Colors.red),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(75),
                offset: Offset(1, 0.8),
                spreadRadius: 1.2,
                blurRadius: 5,
              ),
            ],
          ),
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Text(
                    answersList.answer,
                    style: GoogleFonts.oswald(
                      textStyle: Theme.of(context).textTheme.headlineSmall!
                          .copyWith(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const Spacer(),
                  answerChosen == -1
                      ? Icon(
                          Icons.circle_outlined,
                          size: 28,
                          color: Colors.black.withAlpha(80),
                        )
                      : (isAnswerTrue
                            ? Icon(
                                Icons.check_circle_outline_outlined,
                                size: 28,
                              )
                            : Icon(Icons.cancel_outlined, size: 28)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
