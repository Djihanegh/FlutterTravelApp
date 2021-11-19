import 'package:flutter/material.dart';
import 'custom_text.dart';
import 'trip_item.dart';

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
            padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(title: 'Upcoming trips'),
                TripItem(
                  imagePath: 'assets/images/ningaloo.jpg',
                  place: 'Ningaloo, Australia',
                  title: 'Dive with Whale sharks',
                  date: 'June 30, 2020',
                ),
                CustomText(title: 'Completed trips'),
                TripItem(
                  imagePath: 'assets/images/peru.jpg',
                  place: 'Cusco, Peru',
                  title: 'Hiking through the Rainbow Mountain',
                  date: 'May 30, 2020',
                ),
              ],
            )));
  }
}
