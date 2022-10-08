import 'package:calculator_numsys/pages/config.dart';
import 'package:flutter/material.dart';

class SpecButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;
  final double widthBtn;
  final double heightBtn;
  final bool activeButton;
  // To do: Add width and height Button

  // ignore: use_key_in_widget_constructors
  const SpecButton({
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callback,
    required this.widthBtn,
    required this.heightBtn,
    required this.activeButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(2.0),
        child: SizedBox(
          width: widthBtn,
          height: heightBtn,
          child: TextButton(
            onPressed: activeButton
                ? () {
                    callback(text);
                  }
                : null,
            style: TextButton.styleFrom(
              // primary: Colors.white,
              backgroundColor: Color(fillColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(400.0),
              ),
            ),
            child: Text(text,
                style: TextStyle(
                    fontSize: textSize,
                    color: activeButton
                        ? Color(textColor)
                        : const Color(deactivatedButtonText),
                    fontFamily: 'Inter')),
          ),
        ));
  }
}
