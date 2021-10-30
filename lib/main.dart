import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/presentation/pages/home/home_page.dart';
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
      home: HomePage(),
    );
  }
}
