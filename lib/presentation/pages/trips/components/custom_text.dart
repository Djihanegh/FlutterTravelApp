import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: 30,
        ),
        child: Text(title,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Colors.black)));
  }
}
