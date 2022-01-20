import 'package:bmc/screens/home/components/icon_text.dart';
import 'package:bmc/screens/home/components/small_card.dart';
import 'package:bmc/utils/constant.dart';
import 'package:flutter/material.dart';

import 'btn_navigate.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    double _sliderValue = 20;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: SmallCard(
                    child: const IconAndText(
                      icon: Icons.male_outlined,
                      title: "MALE",
                    ),
                    backgroundColor: ancientColor,
                  ),
                ),
                Expanded(
                  child: SmallCard(
                    child: const IconAndText(
                      icon: Icons.female_outlined,
                      title: "FEMALE",
                    ),
                    backgroundColor: ancientColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SmallCard(
              backgroundColor: ancientColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      "HEIGHT",
                      style: TextStyle(
                        color: whiteColor,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "183",
                      style: TextStyle(
                        color: whiteColor,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                  ),
                  Slider(
                    value: _sliderValue,
                    min: 0,
                    max: 100,
                    activeColor: whiteColor,
                    inactiveColor: Colors.white24,
                    thumbColor: secondaryColor,
                    onChanged: (double value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ancientColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ancientColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const ButtonToNavigate(
            btnText: "CALCULATE YOUR BMI",
            navigateTo: '/result',
          ),
        ],
      ),
    );
  }
}
