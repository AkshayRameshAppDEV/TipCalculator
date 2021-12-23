import 'package:flutter/material.dart';

class BillTipControlWidget extends StatefulWidget {
  const BillTipControlWidget({Key? key}) : super(key: key);

  @override
  _BillTipControlWidgetState createState() => _BillTipControlWidgetState();
}

class _BillTipControlWidgetState extends State<BillTipControlWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side:  const BorderSide(color: Colors.black, width: 0.5),
        borderRadius: BorderRadius.circular(10.0)
      ),
      color: Colors.white,
      child:  Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text( 
              "Bill Amount", 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0, 
                color: Colors.black
              )
            ),
            Text( 
              "Split", 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0, 
                color: Colors.black
              )
            ),
            Text( 
              "Tip", 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0, 
                color: Colors.black
              )
            ),
            Text( 
              "Percentage Slider", 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0, 
                color: Colors.black
              )
            ),
          ],
        ),
      ),
    );
  }
}