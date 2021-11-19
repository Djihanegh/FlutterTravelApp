import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utils/constants.dart';
import 'package:travel_app/utils/size_config.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem(
      {Key? key,
      required this.subtitle,
      required this.title,
      required this.hours,
      required this.reviews,
      required this.rating,
      required this.price,
      required this.details,
      required this.imagePath})
      : super(key: key);

  final String subtitle;
  final String details;
  final String title;
  final String hours;
  final String price;
  final double rating;
  final int reviews;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Material(
            elevation: 0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: getProportionateScreenHeight(250),
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: getProportionateScreenHeight(140),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage(
                                imagePath), // "assets/images/ningaloo.jpg"
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(title.toUpperCase(), //
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.black))),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 10),
                    child: Text(subtitle,
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black)),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10),
                      child: Row(
                        children: [
                          Text("\$$price" " per person ",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  color: Colors.black)),
                          Container(
                            height: 3,
                            width: 3,
                            decoration: BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                          ),
                          Text(" $hours" " hours ",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  color: Colors.black)),
                          Container(
                            height: 3,
                            width: 3,
                            decoration: BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                          ),
                          Text(" $details.",
                              maxLines: 3,
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  color: Colors.black)),
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 13,
                            color: KPrimaryColor,
                          ),
                          Text(rating.toString(),
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11,
                                  color: KPrimaryColor)),
                          Text(" ($reviews)",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 11,
                                  color: Colors.black))
                        ],
                      ))
                ],
              ),
            )));
  }
}
