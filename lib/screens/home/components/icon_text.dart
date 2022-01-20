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
          color: kWhiteColor,
          size: 90.0,
        ),
        Text(
          title,
          style: TextStyle(
            color: kWhiteColor,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
      ],
    );
  }
}
