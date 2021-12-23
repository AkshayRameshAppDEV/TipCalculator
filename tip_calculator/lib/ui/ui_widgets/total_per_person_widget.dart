import 'package:flutter/material.dart';
import '../ui_constants/ui_constants.dart';

class TotalTipPerPersonWidget extends StatefulWidget {
  const TotalTipPerPersonWidget({Key? key}) : super(key: key);

  @override
  _TotalTipPerPersonWidgetState createState() => _TotalTipPerPersonWidgetState();
}

class _TotalTipPerPersonWidgetState extends State<TotalTipPerPersonWidget> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 200,
      child: Card(
        color: appThemeColor.shade100,
        child:  Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Total Per Person", style: TextStyle(fontSize: 20.0, color: appThemeColor)),
              Text("\$91.67", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: appThemeColor))
            ],
          ),
        ),
      )
    );
  }
}