import 'package:flutter/material.dart';

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
                Text('Upcoming trips'),
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 200,
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
                                height: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/biking.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('June 30, 2020')),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Dive with Whale sharks'),
                                      Icon(Icons.navigate_next_outlined)
                                    ],
                                  )),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 10),
                                  child: Text('Ningaloo, Australia'))
                            ],
                          ),
                        )))
              ],
            )));
  }
}
