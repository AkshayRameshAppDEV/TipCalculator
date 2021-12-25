import 'package:flutter/material.dart';
import '../ui_constants/ui_constants.dart';

class TotalTipPerPersonWidget extends StatefulWidget {
    final String totalPerPersonAmt;
  const TotalTipPerPersonWidget({Key? key, this.totalPerPersonAmt = "0"}) : super(key: key);

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
              Text( 
                "Total Per Person", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0, 
                  color: appThemeColor
                )
              ),
              FittedBox(
                fit: BoxFit.fitWidth, 
                child: Text(
                  "\$${widget.totalPerPersonAmt}", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0, 
                    fontWeight: FontWeight.bold, 
                    color: appThemeColor
                  )
                )
              )
            ],
          ),
        ),
      )
    );
  }
}