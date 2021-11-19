import 'package:flutter/material.dart';
import 'package:travel_app/presentation/pages/favorite/favorite_page.dart';
import 'package:travel_app/presentation/pages/trips/trips_page.dart';
import 'package:travel_app/utils/constants.dart';

import 'home_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int navBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            height: 60,
            child: Row(
              children: [
                buildNavBarItem(Icons.home_outlined, 0),
                buildNavBarItem(Icons.favorite_border_outlined, 1),
                buildNavBarItem(Icons.explore_outlined, 2),
                buildNavBarItem(Icons.person_outline_rounded, 3),
              ],
            )),
        body: _pageChooser(navBarIndex));
  }

  Widget _homePage = new HomePage();
  final _favoritePage = new FavoritePage();
  final _tripsPage = new TripsPage();
  final _profilePage = new TripsPage();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return HomePage();
      case 1:
        return _favoritePage;
      case 2:
        return _tripsPage;
      case 3:
        return _profilePage;

      default:
        return HomePage();
    }
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            navBarIndex = index;
            _homePage = _pageChooser(index);
          });
        },
        child: Container(
          margin: EdgeInsets.all(10),
          height: 60,
          width: MediaQuery.of(context).size.width / 5.5,
          decoration: index == navBarIndex
              ? BoxDecoration(
                  color: KPrimaryColor, //Color(0xFF111015),
                  borderRadius: BorderRadius.all(Radius.circular(30)))
              : BoxDecoration(color: Colors.white),
          child: Icon(
            icon,
            color: index == navBarIndex ? Colors.white : Colors.black,
          ),
        ));
  }
}
