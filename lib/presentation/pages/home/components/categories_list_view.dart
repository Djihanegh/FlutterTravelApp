import 'package:flutter/material.dart';
import 'package:travel_app/presentation/pages/home/components/category_widget.dart';
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
            imageUrl: 'assets/images/skydiving.jpeg',
            name: "Skydiving",
          ),
          CategoryWidget(
            imageUrl: 'assets/images/trekking.jpg',
            name: "Trekking",
          ),
          CategoryWidget(
            imageUrl: 'assets/images/hiking.jpg',
            name: "Hiking",
          ),
          CategoryWidget(imageUrl: 'assets/images/biking.jpg', name: "Biking"),
          CategoryWidget(
            imageUrl: 'assets/images/diving.jpg',
            name: "Diving",
          ),
        ]));
  }
}
