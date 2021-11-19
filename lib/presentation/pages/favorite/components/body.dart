import 'package:flutter/material.dart';
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
                  imagePath: 'assets/images/ningaloo.jpg',
                  subtitle: 'Ningaloo, Australia',
                  title: 'Dive with Whale sharks',
                  hours: '5',
                  price: '89',
                  details: '',
                  reviews: 0,
                  rating: 0.0,
                ),
                FavoriteItem(
                  imagePath: 'assets/images/peru.jpg',
                  subtitle: 'Cusco, Peru',
                  title: 'Hiking through the Rainbow Mountain',
                  hours: '5',
                  price: '50',
                  details: '',
                  reviews: 0,
                  rating: 0.0,
                ),
              ],
            )));
  }
}
