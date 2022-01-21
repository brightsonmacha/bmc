import 'package:bmc/utils/constant.dart';
import 'package:flutter/material.dart';

class ButtonToNavigate extends StatelessWidget {
  final String btnText;
  final Function() onPressed;
  final Color backColor;
  const ButtonToNavigate({
    Key? key,
    required this.btnText,
    required this.onPressed,
    required this.backColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        height: _size.height * 0.08,
        width: double.infinity,
      ),
      fillColor: backColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          btnText,
          style: TextStyle(
            color: kWhiteColor,
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
