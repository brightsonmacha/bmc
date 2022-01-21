import 'package:bmc/utils/constant.dart';
import 'package:flutter/material.dart';

class BtnSmallRound extends StatelessWidget {
  final IconData icon;
  final Function() onPress;
  const BtnSmallRound({
    Key? key,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      fillColor: kAncientColorActive,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          icon,
          color: kWhiteColor,
        ),
      ),
    );
  }
}
