import 'package:bmc/screens/result/components/body.dart';
import 'package:bmc/screens/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final String bmiValue;
  final String bmiStatus;
  final String bmiRange;
  final String bmiDescription;

  const ResultPage(
      {Key? key,
      required this.bmiValue,
      required this.bmiStatus,
      required this.bmiRange,
      required this.bmiDescription})
      : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        appTitle: "BMI RESULT",
        leadIcon: Icons.arrow_back_ios,
        onPressIcon: () {
          Navigator.pop(context);
        },
      ),
      body: ResultBody(
        bmiValue: widget.bmiValue,
        bmiStatus: widget.bmiStatus,
        bmiRange: widget.bmiRange,
        bmiDescription: widget.bmiDescription,
      ),
    );
  }
}
