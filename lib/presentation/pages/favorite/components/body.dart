import 'package:flutter/material.dart';
import 'package:travel_app/utils/app_assets.dart';
import 'favorite_item.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FavoriteItem(
                  imagePath: AppAssets.whaleWhatching,
                  subtitle: 'Whale Watching Tour',
                  title: 'Family, photography',
                  hours: '5',
                  price: '89',
                  details: 'Transportation, sneaks',
                  reviews: 230,
                  rating: 4.0,
                ),
                FavoriteItem(
                  imagePath: AppAssets.riffelseeHiking,
                  subtitle: 'Riffelsee hiking',
                  title: 'Hiking, photography',
                  hours: '5',
                  price: '50',
                  details: 'Transportation included',
                  reviews: 120,
                  rating: 3.9,
                ),
              ],
            )));
  }
}
