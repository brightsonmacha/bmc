import 'package:bmc/utils/constant.dart';
import 'package:flutter/material.dart';

class BtnSmallRound extends StatelessWidget {
  final IconData icon;
  final Function() onPress;
  const BtnSmallRound({Key? key, required this.icon, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(7.0),
        child: Icon(
          icon,
          color: kWhiteColor,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
