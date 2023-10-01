import 'package:flutter/material.dart';

class AnswearButton extends StatelessWidget {
  const AnswearButton({
    super.key,
    required this.answearText,
    required this.onTap,
  });

  final String answearText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          backgroundColor: const Color.fromARGB(255, 20, 1, 61),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(answearText),
      ),
    );
  }
}
