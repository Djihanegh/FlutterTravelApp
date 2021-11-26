import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/constants.dart';

class PopularText extends StatelessWidget {
  const PopularText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('RECENTLY VIEWED',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.normal,
                fontSize: 10,
                color: AppColors.mediumGrey)),
        SizedBox(
          height: 10,
        ),
        Text("Pick up where you left off",
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.black)),
      ],
    );

    /*  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

      ],
    );*/
  }
}
