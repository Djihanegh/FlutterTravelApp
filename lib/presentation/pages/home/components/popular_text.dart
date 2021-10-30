import 'package:flutter/material.dart';

class PopularText extends StatelessWidget {
  const PopularText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Popular",
          style: TextStyle(
              fontFamily: 'Muli-Bold',
              color: Colors.black,
              fontSize: 20,
             ),
        ),

      ],
    );
  }
}
