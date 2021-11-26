import 'package:flutter/material.dart';
import 'package:travel_app/utils/app_colors.dart';

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem(
      {Key? key,
      required this.icon,
      required this.index,
      required this.onPressed,
      required this.navBarIndex})
      : super(key: key);

  final IconData icon;
  final int index;
  final Function onPressed;
  final int navBarIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onPressed(),
        child: Container(
          margin: EdgeInsets.all(10),
          // TODO
          height: 60,
          width: MediaQuery.of(context).size.width / 5.5,
          decoration: index == navBarIndex
              ? BoxDecoration(
                  color: AppColors.primaryColor, //Color(0xFF111015),
                  borderRadius: BorderRadius.all(Radius.circular(30)))
              : BoxDecoration(color: Colors.white),
          child: Icon(
            icon,
            color: index == navBarIndex ? Colors.white : Colors.black,
          ),
        ));
  }
}
