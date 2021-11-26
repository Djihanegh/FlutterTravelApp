import 'package:flutter/material.dart';
import 'package:travel_app/utils/app_colors.dart';

class PopularItem extends StatelessWidget {
  final String? name;
  final String? subtitle;
  final String? image;

  PopularItem({
    Key? key,
    required this.name,
    required this.subtitle,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
        padding: EdgeInsets.all(15),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFfae3e2).withOpacity(0.3),
                    // Colors.grey.withOpacity(0.5),
                    offset: Offset(0.0, 1.0),
                    //(x,y)
                    blurRadius: 9.0,
                  ),
                ],
                /*   boxShadow: [
        BoxShadow(
          color: Color(0xFFfae3e2).withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(0, 1),
        ),
      ]*/
              ),
              child: Card(
                  color: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  child: Container(
                    height: 100,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(
                        left: 15, right: 5, top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 90,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                              image: AssetImage('assets/images/timimoun.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "$name",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "$subtitle",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: AppColors.secondaryColor,
                                            fontWeight: FontWeight.w400),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
            )));
  }
}
