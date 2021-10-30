import 'package:flutter/material.dart';
import 'package:travel_app/utils/constants.dart';
import 'package:travel_app/utils/size_config.dart';

class TabText extends StatefulWidget {
  final String text;
  final int selectedIndex;
  final int i;
  final Widget tabWidget;

  const TabText(
      {Key? key,
      required this.text,
      required this.tabWidget,
      required this.selectedIndex,
      required this.i})
      : super(key: key);

  @override
  _TabTextState createState() => _TabTextState();
}

class _TabTextState extends State<TabText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
        width: SizeConfig.screenWidth! / 3.9,
        child: Column(
          children: [
            Container(
                child: Text(
              widget.text,
              style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.w400,
                  color: KPrimaryColor),
            )),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: widget.tabWidget,
            )
          ],
        ));
  }
}
