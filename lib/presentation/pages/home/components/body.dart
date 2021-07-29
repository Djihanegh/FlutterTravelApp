import 'package:flutter/material.dart';
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
  List<Widget> tabs = [];
  List<Visibility> widgets = [];
  int selectedIndex = 0;
  int i = 0;

  // Data
  List<String> categories = ["Sights", "Tours", "Adventures"];

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(
      length: 3,
      vsync: this,
      initialIndex: selectedIndex,
    );
    tabs = List.filled(3, Container());
    buildTab();
  }

  void buildTab() {
    categories.forEach((element) {
      tabs[i] = Container(
        width: 100,
        child: Column(
        children: [
          Container(
              child: Text(
            element,
            style: TextStyle(
                fontSize: 12.0,
                fontFamily: 'Muli',
                fontWeight: FontWeight.w500,
                color: KPrimaryColor),
          )),
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: KPrimaryColor,
                ),
                height: 10,
              ))
        ],
      ));
      i++;
    });
  }

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 3; i++) {
      widgets.add(Visibility(
          child: Padding(
              padding: EdgeInsets.all(15),
              child: ListView.separated(
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white,
                      ),
                      child: Text("hhh"));
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10,
                  );
                },
              ))));
    }
    ;
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 30),
            child: ExploreText()),
        Container(
            height: 50,
            width: double.infinity,
            color: Colors.white,
            child: TabBar(
                indicatorColor: Colors.white,
                labelColor: Colors.yellow,
                controller: _tabController,
                isScrollable: true,
                onTap: (int index) {
                  _tabController?.animateTo(index);
                },
                tabs: tabs)),
        IndexedStack(index: selectedIndex, children: widgets)
      ],
    );
  }
}
