import 'package:flutter/material.dart';

class AppThemeColorChangerWidget extends StatefulWidget {
  const AppThemeColorChangerWidget({Key? key}) : super(key: key);

  @override
  _AppThemeColorChangerWidgetState createState() => _AppThemeColorChangerWidgetState();
}

class _AppThemeColorChangerWidgetState extends State<AppThemeColorChangerWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black, width: 0.5),
          borderRadius: BorderRadius.circular(10.0)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Color Circle 1"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Color Circle 2"),
            ),
          ],
        ),
      ),
    );
  }
}