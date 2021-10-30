import 'package:flutter/material.dart';
import 'package:travel_app/presentation/pages/home/components/popular_item.dart';
import 'package:travel_app/presentation/pages/home/components/popular_text.dart';
import 'package:travel_app/presentation/pages/home/components/sight_item.dart';
import 'package:travel_app/presentation/pages/home/home_page.dart';
import 'package:travel_app/utils/constants.dart';

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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    buildTab();
    for (int i = 0; i < 3; i++) {
      _widgets.add(Visibility(
        child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
                height: size.height * 0.4,
                width: size.width,
                child: ListView.separated(
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, index) {
                    return SightItem(
                      imageUrl: '',
                      name: "Djanet excursions",
                      rating: 4.6,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 5,
                    );
                  },
                ))),
        maintainState: true,
        visible: _selectedIndex == i,
      ));
    }

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
                buildNavBarItem(Icons.home, 0),
                buildNavBarItem(Icons.shopping_bag_outlined, 1),
                buildNavBarItem(Icons.notifications, 2),
                buildNavBarItem(Icons.chat, 3),
                buildNavBarItem(Icons.person, 4),
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
            IndexedStack(index: _selectedIndex, children: _widgets),
            Padding(
                padding: EdgeInsets.only(left: 30, right: 20, top: 20),
                child: PopularText()),
            PopularItem(
              name: "Timimoun Tour",
              subtitle: "10 november - 20 november 2021",
              image: "",
            )
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
          //    padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),

          height: 60,

          width: MediaQuery.of(context).size.width / 7,
          decoration: index == navBarIndex
              ? BoxDecoration(
                  color: KPrimaryColor, //Color(0xFF111015),
                  borderRadius: BorderRadius.all(Radius.circular(30))
                  /*gradient: LinearGradient(
                      colors: [KPrimaryColor, Colors.white],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter)*/
                  )
              : BoxDecoration(color: Colors.white),
          child: Icon(
            icon,
            color: index == navBarIndex ? Colors.white : Colors.black,
          ),
        ));
  }
}
