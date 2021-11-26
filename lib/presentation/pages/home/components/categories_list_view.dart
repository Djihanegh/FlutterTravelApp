import 'package:flutter/material.dart';
import 'package:travel_app/presentation/pages/home/components/category_widget.dart';
import 'package:travel_app/utils/app_assets.dart';
import 'package:travel_app/utils/size_config.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        height: 150,
        width: SizeConfig.screenWidth,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          CategoryWidget(
            imageUrl: AppAssets.skydiving,
            name: "Skydiving",
          ),
          CategoryWidget(
            imageUrl: AppAssets.trekking,
            name: "Trekking",
          ),
          CategoryWidget(
            imageUrl: AppAssets.hiking,
            name: "Hiking",
          ),
          CategoryWidget(imageUrl: AppAssets.biking, name: "Biking"),
          CategoryWidget(
            imageUrl: AppAssets.diving,
            name: "Diving",
          ),
        ]));
  }
}
