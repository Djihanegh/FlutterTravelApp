import 'package:flutter/material.dart';
import 'package:travel_app/domain/models/place.dart';
import 'package:travel_app/presentation/pages/home/components/popular_item.dart';
import 'package:travel_app/presentation/pages/home/components/popular_text.dart';
import 'package:travel_app/presentation/pages/home/components/sight_item.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/size_config.dart';
import 'package:travel_app/utils/text_styles.dart';

import 'categories_list_view.dart';
import 'search_bar.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  // Declarations
  int i = 0, navBarIndex = 0;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  List<Place> places = [
    Place(
        name: 'Djanet excursions',
        rating: 4.6,
        image: 'assets/images/djanet_2.jpg',
        description: 'Description'),
    Place(
        name: 'Tikejda',
        rating: 3.6,
        image: 'assets/images/tikjda_2.jpg',
        description: 'Description'),
    Place(
        name: 'El Gour of Brezina',
        rating: 3.6,
        image: 'assets/images/brezina.jpg',
        description: 'Description')
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    SizeConfig().init(context);

    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 30),
            child: SearchBar()),
        Container(
            color: AppColors.grey,
            height: 200,
            width: SizeConfig.screenWidth,
            child: Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 0, bottom: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('CATEGORIES',
                      style: TextStyles.normal
                          .copyWith(color: AppColors.mediumGrey)),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Text("Choose your own adventure",
                      style: TextStyles.heading.copyWith(fontSize: 15)),
                  CategoriesListView()
                ],
              ),
            )),
        Padding(
            padding: EdgeInsets.only(top: 30),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('BEST RATING',
                          style: TextStyles.normal
                              .copyWith(color: AppColors.mediumGrey))),
                  Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Text("Popular Destinations",
                          style: TextStyles.heading.copyWith(fontSize: 15))),
                  Container(
                      height: size.height * 0.35,
                      width: size.width,
                      child: ListView.separated(
                        controller: _scrollController,
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: places.length,
                        itemBuilder: (BuildContext context, index) {
                          return AnimatedBuilder(
                              animation: _scrollController,
                              builder: (context, child) {
                                return Container(
                             //     imageUrl: places[index].image,
                             //     name: places[index].name,
                             //     rating: places[index].rating,
                                );
                              });
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 5,
                          );
                        },
                      )),
                  Padding(
                      padding: EdgeInsets.only(left: 30, right: 0, top: 20),
                      child: PopularText()),
                  PopularItem(
                    name: "Timimoun Tour",
                    subtitle: "10 november - 20 november 2021",
                    image: "",
                  )
                ])),
      ],
    ));
  }
}
