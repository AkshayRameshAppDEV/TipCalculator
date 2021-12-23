import 'package:flutter/material.dart';
import '../ui_constants/ui_constants.dart';

class TipCalculatorApp extends StatelessWidget {
  const TipCalculatorApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: appThemeColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tip Calculator"),
          centerTitle: true
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
