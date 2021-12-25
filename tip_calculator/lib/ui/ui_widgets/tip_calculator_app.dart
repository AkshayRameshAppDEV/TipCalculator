import 'package:flutter/material.dart';
import '../ui_constants/ui_constants.dart';
import 'total_per_person_widget.dart';
import 'bill_tip_control_widget.dart';

class TipCalculatorApp extends StatefulWidget {
  const TipCalculatorApp({Key? key}) : super(key: key);

  @override
  _TipCalculatorAppState createState() => _TipCalculatorAppState();
}

class _TipCalculatorAppState extends State<TipCalculatorApp> {
  String totalPerPersonAmt = "0";

  void _handleBillTipControlSplitButtonTapped(String newValue) {
    setState(() {
      totalPerPersonAmt = newValue;
      debugPrint('notified');
    });
  }

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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                TotalTipPerPersonWidget(totalPerPersonAmt: totalPerPersonAmt),
                BillTipControlWidget(totalPerPersonAmt: totalPerPersonAmt, onBillTipControlSplitButtonTapped: _handleBillTipControlSplitButtonTapped),
              ],
            ),
          ),
        )
      )
    );
  }
}
