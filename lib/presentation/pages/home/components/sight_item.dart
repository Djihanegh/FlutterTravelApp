import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travel_app/config/routes/routes.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/text_styles.dart';

class SightItem extends StatefulWidget {
  final String imageUrl;
  final String name;
  final double rating;

  const SightItem(
      {Key? key,
      required this.imageUrl,
      required this.rating,
      required this.name})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SightItemState();
  }
}

class _SightItemState extends State<SightItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, Routes.detail);
        },
        child: Padding(
            padding: EdgeInsets.only(left: 20, right: 0, top: 10),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Container(
                    height: 200,
                    margin: const EdgeInsets.only(
                      bottom: 6.0,
                      top: 6,
                      left: 6,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: 250,
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
                                color: AppColors.blue,
                              )),
                        ),
                        Positioned(
                          bottom: 100,
                          left: 15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RatingBar.builder(
                                itemSize: 20,
                                initialRating: widget.rating,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 0.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 5,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${widget.rating}",
                                style: TextStyles.rating,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            bottom: 30,
                            left: 15,
                            child: Column(
                              children: [
                                Container(
                                    width: 150,
                                    child: Text(widget.name,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.left,
                                        style: TextStyles.tourName.copyWith(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold))),
                              ],
                            )),
                      ],
                    )))));
  }
}
