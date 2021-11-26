import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/utils/app_assets.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/size_config.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 0),
        child: Container(
            decoration: BoxDecoration(
                color: AppColors.grey, borderRadius: BorderRadius.circular(15)),
            height: 50,
            width: SizeConfig.screenWidth! * 1.5,
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search places"),
                SvgPicture.asset(
                  AppAssets.search,
                  color: AppColors.black,
                ),
              ],
            )));
    // ],
    //);
  }
}
