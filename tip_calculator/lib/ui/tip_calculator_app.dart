import 'package:flutter/material.dart';

class TipCalculatorApp extends StatelessWidget {
  const TipCalculatorApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: const Text("Tip Calculator App"),
      ),
    );
  }
}