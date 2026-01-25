import 'package:flutter/material.dart';

enum ButtonType { left, right }

class Customtextbutton extends StatelessWidget {
  const Customtextbutton({
    super.key,
    this.onPressed,
    required this.textColor,
    required this.backgroundColor,
    required this.buttonText,
    required this.buttonType,
  });
  final VoidCallback? onPressed;
  final Color textColor;
  final Color backgroundColor;
  final String buttonText;
  final ButtonType buttonType;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: textColor,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: buttonType == ButtonType.left
                ? Radius.circular(16)
                : Radius.circular(0),
            bottomLeft: buttonType == ButtonType.left
                ? Radius.circular(16)
                : Radius.circular(0),
            topRight: buttonType == ButtonType.right
                ? Radius.circular(16)
                : Radius.circular(0),
            bottomRight: buttonType == ButtonType.right
                ? Radius.circular(16)
                : Radius.circular(0),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Text(buttonText, style: TextStyle(fontSize: 16)),
      ),
    );
  }
}
