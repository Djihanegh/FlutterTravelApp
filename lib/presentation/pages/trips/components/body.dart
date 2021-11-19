import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utils/constants.dart';
import 'package:travel_app/utils/size_config.dart';

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
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Upcoming trips',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.black)),
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: getProportionateScreenHeight(210),
                          padding: EdgeInsets.only(bottom: 10),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          //padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: getProportionateScreenHeight(115),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/ningaloo.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('June 30, 2020',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 10,
                                          color: KSecondaryColor))),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Dive with Whale sharks',
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Colors.black)),
                                      Icon(Icons.navigate_next_outlined,
                                          color: Colors.black.withOpacity(0.4))
                                    ],
                                  )),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 10),
                                  child: Text('Ningaloo, Australia',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: Colors.black)))
                            ],
                          ),
                        ))),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                    ),
                    child: Text('Completed trips',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.black))),
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: getProportionateScreenHeight(210),
                          padding: EdgeInsets.only(bottom: 10),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          //padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: getProportionateScreenHeight(115),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/peru.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('May 30, 2020',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 10,
                                          color: KSecondaryColor))),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Hiking through the Rainbow Mountain',
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Colors.black)),
                                      Icon(
                                        Icons.navigate_next_outlined,
                                        color: Colors.black.withOpacity(0.4),
                                      )
                                    ],
                                  )),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 10),
                                  child: Text('Cusco, Peru',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: Colors.black))),
                            ],
                          ),
                        ))),
              ],
            )));
  }
}
