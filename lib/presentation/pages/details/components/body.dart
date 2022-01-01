/*import 'package:flutter/material.dart';
import 'package:travel_app/utils/app_assets.dart';
import 'package:travel_app/utils/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: SizeConfig.screenHeight,
            flexibleSpace:  FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background:  Image.asset(AppAssets.biking , fit: BoxFit.cover,),
            ),
          ),
         /* const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text('Scroll to see the SliverAppBar in effect.'),
              ),
            ),
          ),*/
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: OverflowBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('pinned'),
                  Switch(
                    onChanged: (bool val) {
                      setState(() {
                        _pinned = val;
                      });
                    },
                    value: _pinned,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('snap'),
                  Switch(
                    onChanged: (bool val) {
                      setState(() {
                        _snap = val;
                        // Snapping only applies when the app bar is floating.
                        _floating = _floating || _snap;
                      });
                    },
                    value: _snap,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('floating'),
                  Switch(
                    onChanged: (bool val) {
                      setState(() {
                        _floating = val;
                        _snap = _snap && _floating;
                      });
                    },
                    value: _floating,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:travel_app/utils/app_assets.dart';
import 'package:travel_app/utils/size_config.dart';

import 'transition_app_bar.dart';

class Body extends StatelessWidget {
  final Widget avatar;
  final String title;
  final double extent;

  Body(
      {required this.avatar,
      required this.title,
      this.extent = 250,
      required Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: SizeConfig.screenHeight! - 50,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,

              background: Container(
                height: SizeConfig.screenHeight! - 50,
                decoration: BoxDecoration(
                    /*image: DecorationImage(
                          image: AssetImage(
                        AppAssets.biking,
                      )),*/

                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8))),
              ),
              // autoplay: true,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 75,
                        color: Colors.black12,
                      ),
                    ),
                childCount: 10),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
                color: Colors.blue,
                child: ListTile(
                  title: Text("${index}a"),
                ));
          }, childCount: 25))
        ],
      ),
    );
  }
}
