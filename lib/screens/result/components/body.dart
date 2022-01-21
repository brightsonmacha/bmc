import 'package:bmc/screens/home/components/btn_navigate.dart';
import 'package:bmc/screens/home/components/small_card.dart';
import 'package:bmc/utils/constant.dart';
import 'package:bmc/utils/styles.dart';
import 'package:flutter/material.dart';

class ResultBody extends StatelessWidget {
  const ResultBody({Key? key}) : super(key: key);

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
                      const Text(
                        "NORMAL",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 22.0,
                        ),
                      ),
                      Text(
                        "56.0",
                        textAlign: TextAlign.center,
                        style: kStyleSmallCardBigTxt,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Normal BMI range",
                        textAlign: TextAlign.center,
                        style: kStyleSmallCardSmallTxt,
                      ),
                      Text(
                        "18.2 - 23 kg/m2",
                        textAlign: TextAlign.center,
                        style: kStyleSmallCardSmallTxt,
                      ),
                    ],
                  ),
                  Text(
                    "You have normal body weight.Good job!",
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
