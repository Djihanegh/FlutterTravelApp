import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/config/routes/routes.dart';
import 'package:travel_app/presentation/pages/details/detail_page.dart';
import 'package:travel_app/presentation/pages/favorite/favorite_page.dart';
import 'package:travel_app/presentation/pages/home/home.dart';
import 'package:travel_app/presentation/pages/trips/trips_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case Routes.home:
        return CupertinoPageRoute(builder: (_) => Home());

      case Routes.trips:
        return CupertinoPageRoute(builder: (_) => TripsPage());

      case Routes.favorite:
        return CupertinoPageRoute(builder: (_) => FavoritePage());

      case Routes.detail:
        return CupertinoPageRoute(builder: (_) => DetailPage());

      // return _errorRoute();

      // case Routes.profile:
      //    return CupertinoPageRoute(builder: (_) => List_Libraries());

      //     case Routes.login:
      //    return CupertinoPageRoute(builder: (_) => Login());

      //  case Routes.signUp:
      //    return CupertinoPageRoute(builder: (_) => SignUp());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return CupertinoPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
