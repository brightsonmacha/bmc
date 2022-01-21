import 'package:flutter/cupertino.dart';

class SmallCard extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;

  const SmallCard({
    Key? key,
    required this.child,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
