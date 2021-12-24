import 'package:flutter/material.dart';
import 'package:tip_calculator/model/tip_calculator.dart';
import '../ui_constants/ui_constants.dart';

class BillTipControlWidget extends StatefulWidget {
  final bool active;
  final ValueChanged<bool> onChanged;
  const BillTipControlWidget({Key? key, this.active = false, required this.onChanged}) : super(key: key);

  @override
  _BillTipControlWidgetState createState() => _BillTipControlWidgetState();
}

class _BillTipControlWidgetState extends State<BillTipControlWidget> {
  double _currentSliderValue = 10;
  int _counter = 0;
  double tipAmount = 0.0;
  double totalBillAmountFromUser = 0.0;

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  void _getBillAmountFromUser(String amt) {
    setState(() {
      try {
        if (amt.isNotEmpty) {
          totalBillAmountFromUser = double.parse(amt);
        } else {
          totalBillAmountFromUser = double.parse("0.0");
        }
      } catch (e) {
        totalBillAmountFromUser = double.parse("0.0");
      }
      setTipAmount();
    });
  }

  void setTipAmount() {
    var tipCalculator = TipCalculator(_currentSliderValue/100, totalBillAmountFromUser);
    tipAmount = tipCalculator.getTipAmount();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  Slider tipPercentageSliderRow() {
    return Slider(
      value: _currentSliderValue,
      max: 100,
      divisions: 10,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
          setTipAmount();
        });
      },
    );
  }

  Padding billAmountInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextFormField(
        onFieldSubmitted: (value) => _getBillAmountFromUser(value),
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
              onPressed: _decrementCounter,
              child: const Text('-'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("$_counter",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: appThemeColor,
                      fontWeight: FontWeight.bold)),
            ),
            ElevatedButton(
              onPressed: _handleTap,
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
            style: TextStyle(fontSize: 20.0, color: appThemeColor)),
        Row(
          children: [
            Text('\$$tipAmount',
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
    return Text("${_currentSliderValue.toInt()} %",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20.0, color: appThemeColor, fontWeight: FontWeight.bold));
  }

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
            tipPercentageSliderRow()
          ],
        ),
      ),
    );
  }
}
