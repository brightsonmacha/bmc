import 'package:bmc/utils/styles.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget{
  final String appTitle;
  final IconData leadIcon;
  final Function() onPressIcon;

  const AppBarCustom({Key? key, required this.appTitle, required this.leadIcon, required this.onPressIcon} ) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(leadIcon),
        onPressed: onPressIcon,
      ),
      centerTitle: true,
      title: Text(
        appTitle,
        style: appBarStyle,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
