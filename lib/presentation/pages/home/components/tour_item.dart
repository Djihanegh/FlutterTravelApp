import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/text_styles.dart';

class TourItem extends StatefulWidget {
  final String imageUrl;
  final String name;
  final double rating;
  final int numberOfTours;
  final String status;
  final List<String> images;

  const TourItem(
      {Key? key,
      required this.imageUrl,
      required this.rating,
      required this.numberOfTours,
      required this.status,
      required this.images,
      required this.name})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TourItemState();
  }
}

class _TourItemState extends State<TourItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23, right: 0, top: 10),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Container(
                height: 150,
                margin: const EdgeInsets.only(
                  bottom: 6.0,
                  top: 6,
                  left: 6,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        image: DecorationImage(
                          image: AssetImage(widget.imageUrl),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 5,
                      child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(10),
                          child: Icon(
                            Icons.bookmark,
                            color:  AppColors.blue,
                          )),
                    ),
                    Positioned(
                      top: 10,
                      left: 5,
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 30,
                          width: 50,
                          // padding: EdgeInsets.all(6),
                          margin: EdgeInsets.all(10),
                          child: Center(
                              child: Text(
                            'New',
                            style: TextStyle(color: AppColors.white),
                          ))),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 15,
                      child: Container(
                          width: 100,
                          child: Text(widget.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.left,
                              style: TextStyles.tourName.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 25))),
                    ),
                    Positioned(
                        bottom: 30,
                        left: 15,
                        child: Container(
                            width: 100,
                            child: Text("${widget.numberOfTours}" + "Tours",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.left,
                                style: TextStyles.tourName
                                    .copyWith(fontSize: 15)))),
                    Positioned(
                        bottom: 30,
                        right: 15,
                        child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: 30,
                                    child: Text("${widget.rating}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.left,
                                        style: TextStyles.tourName.copyWith(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15))),
                                Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Container(
                                        width: 30,
                                        margin: EdgeInsets.all(2),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 20,
                                        ))),
                              ],
                            ))),
                  ],
                ))));
  }
}
