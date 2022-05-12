import 'package:calculator/components/display.dart';
import 'package:calculator/components/keyboard.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  _onPressed(String text) {
    print(text);
  }

  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: [
          const Display(text: "123.45"),
          Keyboard(cb: _onPressed),
        ],
      ),
    );
  }
}
