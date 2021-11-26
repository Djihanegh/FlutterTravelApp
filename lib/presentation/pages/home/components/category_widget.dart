import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utils/text_styles.dart';

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
                ...[
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(imageUrl), fit: BoxFit.fill),
                    ),
                  ),
                  Text(
                    name,
                    style: TextStyles.medium,
                  )
                ].expand(
                  (widget) => [
                    widget,
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ]),
        ));
  }
}
