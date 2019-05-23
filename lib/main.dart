import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tzakapp/screens/authen.dart';

void main() {
  runApp(MyAppz());
}

class MyAppz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(home: Authen());
  }
}
