import 'package:flutter/material.dart';
import '../ui_constants/ui_constants.dart';
import 'total_per_person_widget.dart';
import 'bill_tip_control_widget.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              TotalTipPerPersonWidget(),
              BillTipControlWidget(),
            ],
          )
        ),
      )
    );
  }
}
