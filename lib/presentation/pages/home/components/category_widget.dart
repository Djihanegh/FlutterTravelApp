import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key, required this.name, required this.imageUrl})
      : super(key: key);

  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(imageUrl), fit: BoxFit.fill),
                ),
                //   decoration: BoxDecoration(shape: BoxShape.circle),
                //    child: Image.asset(imageUrl)
              ),
              SizedBox(height: 10),
              Text(
                name,
                style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
              )
            ],
          ),
        ));
  }
}
