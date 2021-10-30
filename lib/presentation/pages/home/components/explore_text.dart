import 'package:flutter/material.dart';

class ExploreText extends StatelessWidget {
  const ExploreText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Explore",
          style:  TextStyle(
              fontFamily: 'Muli',
              color: Colors.black,
              fontSize: 35,
           ),
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ], borderRadius: BorderRadius.circular(30), color: Colors.white),
          child: IconButton(
            icon: Icon(Icons.explore_sharp),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
