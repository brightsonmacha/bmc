import 'package:bmc/utils/constant.dart';
import 'package:flutter/material.dart';

class BodyWelcome extends StatelessWidget {
  const BodyWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RefreshProgressIndicator(
            backgroundColor: kWhiteColor,
          ),
          const SizedBox(
            height: 40.0,
          ),
          Center(
            child: Text(
              "BMI CALCULATOR",
              style: TextStyle(
                color: kWhiteColor,
                letterSpacing: 2.0,
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
