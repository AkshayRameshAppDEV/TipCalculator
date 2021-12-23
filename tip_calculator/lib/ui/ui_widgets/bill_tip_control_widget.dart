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
          side: const BorderSide(color: Colors.black, width: 0.5),
          borderRadius: BorderRadius.circular(10.0)),
      color: Colors.white,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
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
                  labelText: 'Enter the Amount in (\$)',
                ),
              ),
            ),
            const Text("Split",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, color: Colors.black)),
            const Text("Tip",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, color: Colors.black)),
            const Text("Percentage Slider",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
