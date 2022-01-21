import 'package:bmc/screens/home/components/btn_navigate.dart';
import 'package:bmc/screens/home/components/small_card.dart';
import 'package:bmc/utils/constant.dart';
import 'package:bmc/utils/styles.dart';
import 'package:flutter/material.dart';

class ResultBody extends StatelessWidget {
  final String bmiStatus;
  final String bmiValue;
  final String bmiRange;
  final String bmiDescription;

  const ResultBody(
      {Key? key,
      required this.bmiStatus,
      required this.bmiValue,
      required this.bmiRange,
      required this.bmiDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Result",
            style: TextStyle(
              fontSize: 30.0,
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: SmallCard(
              backgroundColor: kAncientColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        bmiStatus.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 22.0,
                        ),
                      ),
                      Text(
                        bmiValue,
                        textAlign: TextAlign.center,
                        style: kStyleSmallCardBigTxt,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "BMI Range",
                        textAlign: TextAlign.center,
                        style: kStyleSmallCardSmallTxt,
                      ),
                      Text(
                        bmiRange + " kg/m2",
                        textAlign: TextAlign.center,
                        style: kStyleSmallCardSmallTxt,
                      ),
                    ],
                  ),
                  Text(
                    bmiDescription,
                    style: kStyleSmallCardSmallTxt,
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                  ButtonToNavigate(
                    btnText: 'SAVE RESULT',
                    onPressed: () {},
                    backColor: kAncientColorActive,
                  ),
                ],
              ),
            ),
          ),
          ButtonToNavigate(
            btnText: 'RE-CALCULATE YOUR BMI',
            backColor: kSecondaryColor,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
