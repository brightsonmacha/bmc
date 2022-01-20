import 'package:bmc/utils/constant.dart';
import 'package:flutter/cupertino.dart';

class ButtonToNavigate extends StatelessWidget {
  final String btnText;
  final String navigateTo;
  const ButtonToNavigate({Key? key, required this.btnText, required this.navigateTo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, navigateTo);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        height: _size.height * 0.08,
        width: double.infinity,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            btnText,
            style: TextStyle(
              color: whiteColor,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              fontSize: 18.0
            ),
          ),
        ),
      ),
    );
  }
}
