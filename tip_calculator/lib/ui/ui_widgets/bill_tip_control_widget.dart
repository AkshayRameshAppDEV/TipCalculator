import 'package:flutter/material.dart';
import '../ui_constants/ui_constants.dart';

class BillTipControlWidget extends StatefulWidget {
  const BillTipControlWidget({Key? key}) : super(key: key);

  @override
  _BillTipControlWidgetState createState() => _BillTipControlWidgetState();
}

Padding billAmountInput(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
    child: TextFormField(
      textInputAction: TextInputAction.done,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Enter the Bill Amount in (\$)',
      ),
    ),
  );
}

Row splitTipRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
       Text("Split",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20.0, color: appThemeColor)),
      Row(
        children: [
          ElevatedButton(
            onPressed: () {
              // Respond to button press
            },
            child: const Text('-'),
          ),
           Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("3",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, color: appThemeColor, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: () {
              // Respond to button press
            },
            child: const Text('+'),
          )
        ],
      )
    ],
  );
}

Row tipAmountRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Tip",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0,
              color: appThemeColor)),
      Row(
        children: [
          Text("\$25",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  color: appThemeColor,
                  fontWeight: FontWeight.bold))
        ],
      )
    ],
  );
}


Text tipPercentageRow() {
  return Text("10 %",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 20.0, color: appThemeColor, fontWeight: FontWeight.bold));
}

class _BillTipControlWidgetState extends State<BillTipControlWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black, width: 0.5),
          borderRadius: BorderRadius.circular(10.0)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            billAmountInput(context),
            splitTipRow(),
            tipAmountRow(),
            tipPercentageRow(),
          ],
        ),
      ),
    );
  }

}
