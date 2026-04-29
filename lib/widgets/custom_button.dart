import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final bool isButtonAvailable;
  final VoidCallback? changeQuestion;
  const CustomButton({
    super.key,
    required this.buttonName,
    required this.isButtonAvailable,
    required this.changeQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 45,
        child: ElevatedButton(
          onPressed: changeQuestion,
          style: ElevatedButton.styleFrom(
            backgroundColor: isButtonAvailable
                ? const Color(0xFF1c0790)
                : Colors.grey[300],

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(8),
            ),
          ),
          child: Text(
            buttonName,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: isButtonAvailable ? Colors.white : Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
