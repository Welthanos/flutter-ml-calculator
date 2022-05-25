import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const Color darkColor = Color.fromARGB(255, 0, 47, 94);
  static const Color defaultColor = Color.fromARGB(255, 0, 74, 143);
  static const Color operationColor = Color.fromARGB(255, 0, 0, 0);

  final String text;
  final bool doubleSize;
  final Color color;
  final void Function(String) cb;

  const Button({
    Key? key,
    required this.text,
    this.doubleSize = false,
    this.color = defaultColor,
    required this.cb,
  }) : super(key: key);

  const Button.doubleSize({
    Key? key,
    required this.text,
    this.doubleSize = true,
    this.color = defaultColor,
    required this.cb,
  }) : super(key: key);

  const Button.operation({
    Key? key,
    required this.text,
    this.doubleSize = false,
    this.color = operationColor,
    required this.cb,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: doubleSize ? 2 : 1,
      child: ElevatedButton(
        onPressed: () => cb(text),
        child: Text(
          text,
          style: const TextStyle(
            color: Color.fromARGB(255, 211, 211, 211),
            fontSize: 32,
            fontWeight: FontWeight.w300,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
    );
  }
}
