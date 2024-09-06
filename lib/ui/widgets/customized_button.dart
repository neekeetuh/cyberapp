import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  CustomizedButton(
      {super.key,
        required void Function() onPressed,
        Color textColor = Colors.white,
        Color? backgroundColor, required this.text})
      : _textColor = textColor,
        _onPressed = onPressed,
        _backgroundColor = backgroundColor ?? primaryColor.withOpacity(0.7);

  final VoidCallback _onPressed;

  final Color _textColor;
  final Color _backgroundColor;

  final String text;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: _onPressed,
      style: ButtonStyle(
        fixedSize: WidgetStatePropertyAll<Size>(
            Size(screenSize.width / 4, screenSize.height / 20)),
        foregroundColor: WidgetStatePropertyAll<Color>(_textColor),
        backgroundColor: WidgetStatePropertyAll<Color>(_backgroundColor),
      ),
      child: Center(
        child: Text(text),
      ),
    );
  }
}