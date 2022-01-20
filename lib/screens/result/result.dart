import 'package:bmc/screens/result/components/body.dart';
import 'package:bmc/screens/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        appTitle : "BM RESULT",
        leadIcon: Icons.arrow_back_ios,
        onPressIcon: (){
          Navigator.pop(context);
        },
      ),
      body: const ResultBody(),
    );
  }
}
