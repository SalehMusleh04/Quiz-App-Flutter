import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionItem extends StatelessWidget {
  final String questionTitle;
  const QuestionItem({super.key, required this.questionTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        questionTitle,
        style: GoogleFonts.notoSerif(
          textStyle: Theme.of(
            context,
          ).textTheme.displaySmall!.copyWith(fontSize: 24),
        ),
      ),
    );
  }
}
