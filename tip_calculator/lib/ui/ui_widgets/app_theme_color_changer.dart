import 'package:flutter/material.dart';

class AppThemeColorChangerWidget extends StatefulWidget {
  final ValueChanged<MaterialColor> handleThemeColorButtonTapped;
  const AppThemeColorChangerWidget({Key? key, required this.handleThemeColorButtonTapped}) : super(key: key);

  @override
  _AppThemeColorChangerWidgetState createState() => _AppThemeColorChangerWidgetState();
}

class _AppThemeColorChangerWidgetState extends State<AppThemeColorChangerWidget> {

  List<MaterialColor> appThemeColorsArray = [Colors.purple, Colors.red, Colors.blue, Colors.pink, Colors.amber, Colors.green];

  void _handleTap(MaterialColor color) {
    widget.handleThemeColorButtonTapped(color);
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
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
            for(var item in appThemeColorsArray ) paddedCircularColorWidget(item)
              ]
          ),
        ),
      ),
    );
  }

  Padding paddedCircularColorWidget(MaterialColor color) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () => _handleTap(color),
              child: null,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                primary: color, // <-- Button color
              ),
            ),
          );
  }
}
