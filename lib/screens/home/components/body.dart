import 'package:bmc/screens/home/components/btn_navigate.dart';
import 'package:bmc/screens/home/components/btn_small_rnd.dart';
import 'package:bmc/screens/home/components/icon_text.dart';
import 'package:bmc/screens/home/components/small_card.dart';
import 'package:bmc/screens/home/components/small_card_body.dart';
import 'package:bmc/utils/constant.dart';
import 'package:flutter/material.dart';


class BodyHome extends StatefulWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  int _height = 129;
  double _weight = 68.0;
  double _age = 23.0;

  @override
  Widget build(BuildContext context) {

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
                    backgroundColor: kAncientColor,
                  ),
                ),
                Expanded(
                  child: SmallCard(
                    child: const IconAndText(
                      icon: Icons.female_outlined,
                      title: "FEMALE",
                    ),
                    backgroundColor: kAncientColor,
                  ),
                ),
              ],
            ),
          ),
          ClipRect(
            child: SmallCard(
              backgroundColor: kAncientColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SmallCardBody(
                    textTitle: 'HEIGHT',
                    textValue: _height.toString(),
                  ),
                  Slider(
                    value: _height.toDouble(),
                    min: 10,
                    max: 200,
                    activeColor: kWhiteColor,
                    inactiveColor: Colors.white24,
                    thumbColor: pSecondaryColor,
                    onChanged: (double value) {
                      setState(() {
                        _height = value.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: SmallCard(
                    backgroundColor: kAncientColor,
                    child: Column(
                      children: [
                        SmallCardBody(
                          textValue: _weight.toString(),
                          textTitle: 'WEIGHT',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BtnSmallRound(
                              icon: Icons.remove,
                              onPress: () {
                                setState(() {
                                  _weight --;
                                });
                              },
                            ),
                            BtnSmallRound(
                              icon: Icons.add,
                              onPress: () {
                                setState(() {
                                  _weight ++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SmallCard(
                    backgroundColor: kAncientColor,
                    child: Column(
                      children: [
                        SmallCardBody(
                          textValue: _age.toString(),
                          textTitle: 'AGE',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BtnSmallRound(
                              icon: Icons.remove,
                              onPress: () {
                                setState(() {
                                  _age = _age - 1;
                                });
                              },
                            ),
                            BtnSmallRound(
                              icon: Icons.add,
                              onPress: () {
                                setState(() {
                                  _age = _age + 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
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
