import 'package:bmc/utils/styles.dart';
import 'package:flutter/material.dart';

class SmallCardBody extends StatelessWidget {
  final String textTitle;
  final int textValue;
  final String dimension;
  const SmallCardBody({
    Key? key,
    required this.textTitle,
    required this.textValue,
    required this.dimension,
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
        Row(
          textBaseline: TextBaseline.alphabetic,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Center(
              child: Text(
                textValue.toString(),
                style: kStyleSmallCardBigTxt,
              ),
            ),
            Center(
              child: Text(
                dimension.isEmpty ? "" : dimension,
                style: kStyleSmallCardBigTxtDesc,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
