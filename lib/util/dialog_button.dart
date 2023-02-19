import 'package:flutter/material.dart';

class DialogButton extends StatelessWidget {
  DialogButton({super.key, required this.text, required this.onPressed});
  final String text;
  VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(5),
      ),
      onPressed: onPressed,
      color: Colors.black,
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
