import 'package:flutter/material.dart';
import 'package:tzakapp/screens/authen.dart';

void main(){
  runApp(MyAppz());
}

class MyAppz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Authen());
  }
}