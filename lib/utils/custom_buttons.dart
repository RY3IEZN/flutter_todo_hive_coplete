import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  CustomButtons({
    super.key,
    required this.btnText,
    required this.onPressed,
  });
  final String btnText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(btnText),
      color: Colors.yellow,
    );
  }
}
