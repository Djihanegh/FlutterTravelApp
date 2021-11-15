import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/data/models/place.dart';
import 'package:travel_app/presentation/pages/home/components/popular_item.dart';
import 'package:travel_app/presentation/pages/home/components/popular_text.dart';
import 'package:travel_app/presentation/pages/home/components/sight_item.dart';
import 'package:travel_app/presentation/pages/home/components/tour_item.dart';
import 'package:travel_app/presentation/pages/home/home_page.dart';
import 'package:travel_app/utils/constants.dart';
import 'package:travel_app/utils/size_config.dart';

import 'categories_list_view.dart';
import 'explore_text.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  // Declarations
  TabController? _tabController;
  List<Widget> _tabs = [];
  List<Visibility> _widgets = [];
  int _selectedIndex = 0;
  int i = 0, navBarIndex = 0;

  List<String> _categories = ["Sights", "Tours", "Adventures"];

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(
      length: 3,
      vsync: this,
      initialIndex: _selectedIndex,
    );
    _tabs = List.filled(3, Container());
    buildTab();
  }

  void buildTab() {
    for (int i = 0; i < 3; i++) {
      _tabs[i] = Container(
          child: Column(
        children: [
          Container(
              child: Text(
            _categories[i],
            style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'Muli',
                fontWeight: FontWeight.w400,
                color: KPrimaryColor),
          )),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: GestureDetector(
                child: _selectedIndex == i
                    ? Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: KPrimaryColor,
                        ),
                        height: 8,
                        width: 8,
                      )
                    : Container(
                        height: 8,
                        width: 8,
                      ),
                onTap: () {
                  _selectedIndex = i;
                }),
          )
        ],
      ));
    }
  }

  List<Place> places = [
    Place(
        name: 'Djanet excursions',
        rating: 4.6,
        image: 'assets/images/djanet_2.jpg',
        description: 'Description'),
    Place(
        name: 'Tikejda',
        rating: 3.6,
        image: 'assets/images/tikjda_2.jpg',
        description: 'Description'),
    Place(
        name: 'El Gour of Brezina',
        rating: 3.6,
        image: 'assets/images/brezina.jpg',
        description: 'Description')
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    SizeConfig().init(context);

    buildTab();
    buildList(size);
    //for (int i = 0; i < 3; i++) {

    // }

    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            height: 60,
            child: Row(
              children: [
                buildNavBarItem(Icons.home_outlined, 0),
                buildNavBarItem(Icons.search_outlined, 1),
                buildNavBarItem(Icons.bookmark_border, 2),
                buildNavBarItem(Icons.settings_outlined, 3),
              ],
            )),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
                padding:
                    EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 30),
                child: ExploreText()),

            Container(
                color: KGrey,
                height: 200,
                width: SizeConfig.screenWidth,
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, left: 20, right: 0, bottom: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CATEGORIES',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                              color: KLightGreyy)),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Choose your own adventure",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.black)),
                      CategoriesListView()
                    ],
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            /* Container(
                height: 50,
                width: double.infinity,
                child: TabBar(
                    indicatorColor: Colors.white,
                    labelColor: Colors.yellow,
                    controller: _tabController,
                    isScrollable: true,
                    onTap: (int index) {
                      setState(() {
                        _selectedIndex = index;
                        _tabController?.animateTo(index);
                      });
                    },
                    tabs: _tabs)),
            IndexedStack(index: _selectedIndex, children: _widgets),*/

            Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('BEST RATING',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10,
                                  color: KLightGreyy))),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("Popular Destinations",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Colors.black))),
                      Container(
                          height: size.height * 0.35,
                          width: size.width,
                          child: ListView.separated(
                            physics: ScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: places.length,
                            itemBuilder: (BuildContext context, index) {
                              return SightItem(
                                imageUrl: places[index].image,
                                name: places[index].name,
                                rating: places[index].rating,
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                width: 5,
                              );
                            },
                          )),
                      Padding(
                          padding: EdgeInsets.only(left: 30, right: 0, top: 20),
                          child: PopularText()),
                      PopularItem(
                        name: "Timimoun Tour",
                        subtitle: "10 november - 20 november 2021",
                        image: "",
                      )
                    ])),
          ],
        )));
  }

  Widget _showPage = new HomePage();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _showPage;

      case 1:
        return _showPage;
      case 2:
        return _showPage;
      case 3:
        return _showPage;

      default:
        return _showPage;
    }
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            navBarIndex = index;
            _showPage = _pageChooser(index);
          });
        },
        child: Container(
          margin: EdgeInsets.all(10),
          height: 60,
          width: MediaQuery.of(context).size.width / 5.5,
          decoration: index == navBarIndex
              ? BoxDecoration(
                  color: KPrimaryColor, //Color(0xFF111015),
                  borderRadius: BorderRadius.all(Radius.circular(30)))
              : BoxDecoration(color: Colors.white),
          child: Icon(
            icon,
            color: index == navBarIndex ? Colors.white : Colors.black,
          ),
        ));
  }

  List<Visibility> buildList(Size size) {
    _widgets.insert(
      0,
      Visibility(
        child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: size.height * 0.4,
                      width: size.width,
                      child: ListView.separated(
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: places.length,
                        itemBuilder: (BuildContext context, index) {
                          return SightItem(
                            imageUrl: places[index].image,
                            name: places[index].name,
                            rating: places[index].rating,
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 5,
                          );
                        },
                      )),
                  Padding(
                      padding: EdgeInsets.only(left: 30, right: 0, top: 20),
                      child: PopularText()),
                  PopularItem(
                    name: "Timimoun Tour",
                    subtitle: "10 november - 20 november 2021",
                    image: "",
                  )
                ])),
        maintainState: true,
        visible: _selectedIndex == 0,
      ),
    );

    _widgets.insert(
      1,
      Visibility(
        child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: size.height * 0.4,
                      width: size.width,
                      child: ListView.separated(
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: places.length,
                        itemBuilder: (BuildContext context, index) {
                          return TourItem(
                            images: [],
                            status: "New",
                            imageUrl: places[1].image,
                            name: places[1].name,
                            rating: places[1].rating,
                            numberOfTours: 12,
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 5,
                          );
                        },
                      )),
                  Padding(
                      padding: EdgeInsets.only(left: 30, right: 0, top: 20),
                      child: PopularText()),
                  PopularItem(
                    name: "Tour",
                    subtitle: "10 november - 20 november 2021",
                    image: "",
                  )
                ])),
        maintainState: true,
        visible: _selectedIndex == 1,
      ),
    );

    _widgets.insert(
      2,
      Visibility(
        child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: size.height * 0.4,
                      width: size.width,
                      child: ListView.separated(
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: places.length,
                        itemBuilder: (BuildContext context, index) {
                          return SightItem(
                            imageUrl: places[index].image,
                            name: places[index].name,
                            rating: places[index].rating,
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 5,
                          );
                        },
                      )),
                  Padding(
                      padding: EdgeInsets.only(left: 30, right: 0, top: 20),
                      child: PopularText()),
                  PopularItem(
                    name: "Timimoun Tour",
                    subtitle: "10 november - 20 november 2021",
                    image: "",
                  )
                ])),
        maintainState: true,
        visible: _selectedIndex == 2,
      ),
    );

    return _widgets;
  }
}
