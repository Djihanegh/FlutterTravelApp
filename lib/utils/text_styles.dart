import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class TextStyles {
  static const tourName = TextStyle(
    fontFamily: 'Muli',
    color: Colors.white,
  );

  static const regular = TextStyle(
      fontSize: 15.0,
      fontFamily: 'Muli',
      fontWeight: FontWeight.w400,
      color: AppColors.primaryColor);

  static const regular2 = TextStyle(
      fontSize: 13,
      color: AppColors.secondaryColor,
      fontWeight: FontWeight.w400);

  static final regular3 = GoogleFonts.montserrat(
      fontWeight: FontWeight.w400, fontSize: 11, color: Colors.black);

  static final regular4 = GoogleFonts.montserrat(
      fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black);

  static const bold =
      TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold);

  static const rating = TextStyle(color: Colors.white, fontSize: 15);

  static final heading =
      GoogleFonts.montserrat(fontWeight: FontWeight.w600, color: Colors.black);

  static final semiBold = GoogleFonts.montserrat(
      fontWeight: FontWeight.w600, fontSize: 11, color: AppColors.primaryColor);

  static final medium = GoogleFonts.montserrat(fontWeight: FontWeight.w500);

  static final normal = GoogleFonts.montserrat(
      fontWeight: FontWeight.normal, fontSize: 10, color: AppColors.mediumGrey);

  static final light = GoogleFonts.montserrat(
      fontWeight: FontWeight.w300, fontSize: 11, color: Colors.black);

  // Small text (for add/edit task pages)
  static const caption = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );
}
