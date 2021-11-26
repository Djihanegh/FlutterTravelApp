import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/constants.dart';
import 'package:travel_app/utils/text_styles.dart';

class PopularText extends StatelessWidget {
  const PopularText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...[
            Text('RECENTLY VIEWED', style: TextStyles.normal.copyWith(color: AppColors.mediumGrey)),
            Text("Pick up where you left off", style: TextStyles.heading.copyWith(fontSize: 18)),
          ].expand(
            (widget) => [
              widget,
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ]);
  }
}
