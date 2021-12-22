import 'package:flutter/material.dart';

class TipCalculatorApp extends StatelessWidget {
  const TipCalculatorApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: const Text("Tip Calculator"),
        centerTitle: true,
        backgroundColor: Colors.redAccent
      ),
        body: Center(
          child: Column(
            children: const [
              Text("Total Per Person Widget"),
              Text("Bill Tip Control Widget"),
            ],
          )
        ),
      )
    );
  }
}
