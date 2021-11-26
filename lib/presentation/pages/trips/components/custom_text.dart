import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/text_styles.dart';

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
            style: TextStyles.regular2.copyWith(color: AppColors.black)));
  }
}
