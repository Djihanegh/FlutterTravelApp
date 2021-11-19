import 'package:flutter/material.dart';
import 'package:travel_app/utils/size_config.dart';
import 'components/body.dart';

class TripsPage extends StatelessWidget {
  const TripsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Trips',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Body(),
    );
  }
}
