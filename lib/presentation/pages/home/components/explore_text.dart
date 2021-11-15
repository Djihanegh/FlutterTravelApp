import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/utils/constants.dart';
import 'package:travel_app/utils/size_config.dart';

class ExploreText extends StatelessWidget {
  const ExploreText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return /* Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [*/
        /* Text(
          "Explore",
          style: TextStyle(
            fontFamily: 'Muli',
            color: Colors.black,
            fontSize: 35,
          ),
        ),*/
        //Spacer(),
        /* Container(
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
        )*/
        Padding(
            padding: EdgeInsets.only(right: 0),
            child: Container(
                decoration: BoxDecoration(
                    color: KGrey, borderRadius: BorderRadius.circular(15)),
                height: 50,
                width: SizeConfig.screenWidth! * 1.5,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Flexible(child: CustomText()),
                    Text("Search places"),

                    SvgPicture.asset(
                      "assets/icons/search.svg",
                      color: Colors.black,
                    ),
                  ],
                )));
    // ],
    //);
  }
}
