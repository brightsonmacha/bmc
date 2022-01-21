import 'package:bmc/screens/home/components/btn_navigate.dart';
import 'package:bmc/screens/home/components/btn_small_rnd.dart';
import 'package:bmc/screens/home/components/icon_text.dart';
import 'package:bmc/screens/home/components/small_card.dart';
import 'package:bmc/screens/home/components/small_card_body.dart';
import 'package:bmc/services/enums/gender.dart';
import 'package:bmc/utils/constant.dart';
import 'package:flutter/material.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  Color _activeCardMale = kAncientColorActive;
  Color _activeCardFemale = kAncientColor;
  int _height = 129;
  int _weight = 68;
  int _age = 23;

  void activateCard(Enum value) {
    if(value == Gender.MALE){
      _activeCardMale = kAncientColorActive;
      _activeCardFemale = kAncientColor;
    }else{
      _activeCardFemale = kAncientColorActive;
      _activeCardMale = kAncientColor;
    }
  }

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
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        activateCard(Gender.MALE);
                      });
                    },
                    child: SmallCard(
                      child: const IconAndText(
                        icon: Icons.male_outlined,
                        title: "MALE",
                      ),
                      backgroundColor: _activeCardMale,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        activateCard(Gender.FEMALE);
                      });
                    },
                    child: SmallCard(
                      child: const IconAndText(
                        icon: Icons.female_outlined,
                        title: "FEMALE",
                      ),
                      backgroundColor: _activeCardFemale,
                    ),
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
                    textValue: _height,
                    dimension: 'cm',
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: kSecondaryColor,
                      activeTrackColor: kWhiteColor,
                      trackHeight: 2.5,
                      inactiveTrackColor: Colors.white24,
                      overlayColor: kSecondaryColor.withOpacity(0.16),
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 11.0,
                      ),
                    ),
                    child: Slider(
                      value: _height.toDouble(),
                      min: 10,
                      max: 200,
                      onChanged: (double value) {
                        setState(() {
                          _height = value.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          ClipRect(
            child: Row(
              children: [
                Expanded(
                  child: SmallCard(
                    backgroundColor: kAncientColor,
                    child: Column(
                      children: [
                        SmallCardBody(
                          textValue: _weight,
                          textTitle: 'WEIGHT',
                          dimension: '',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BtnSmallRound(
                              icon: Icons.remove,
                              onPress: () {
                                setState(() {
                                  _weight--;
                                });
                              },
                            ),
                            BtnSmallRound(
                              icon: Icons.add,
                              onPress: () {
                                setState(() {
                                  _weight++;
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
                          textValue: _age,
                          textTitle: 'AGE',
                          dimension: '',
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
          ButtonToNavigate(
            btnText: "CALCULATE YOUR BMI",
            backColor: kSecondaryColor,
            onPressed: (){
              Navigator.pushNamed(context, '/result');
            },
          ),
        ],
      ),
    );
  }
}
