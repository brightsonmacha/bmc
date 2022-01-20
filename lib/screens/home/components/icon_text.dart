import 'package:bmc/utils/constant.dart';
import 'package:flutter/material.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String title;

  const IconAndText({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          color: whiteColor,
          size: 90.0,
        ),
        Text(
          title,
          style: TextStyle(
            color: whiteColor,
            fontSize: 20.0,
            letterSpacing: 2.0,
          ),
        ),
      ],
    );
  }
}
