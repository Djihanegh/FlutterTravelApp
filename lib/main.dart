import 'package:flutter/material.dart';
import 'package:travel_app/presentation/pages/home/home.dart';
import 'package:travel_app/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        fontFamily: 'Regular',
        textTheme: theme,
      ),
      home: Home(),
    );
  }
}
