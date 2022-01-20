import 'package:bmc/utils/styles.dart';
import 'package:flutter/cupertino.dart';

class SmallCardBody extends StatelessWidget {
  final String textTitle;
  final String textValue;
  const SmallCardBody({
    Key? key,
    required this.textTitle,
    required this.textValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            textTitle,
            style: kStyleSmallCardSmallTxt,
          ),
        ),
        Center(
          child: Text(
            textValue,
            style: kStyleSmallCardBigTxt,
          ),
        ),
      ],
    );
  }
}
