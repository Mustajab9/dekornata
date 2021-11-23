// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        color: Colors.transparent,
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(70)),
        child: Text(title,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              color: kPrimaryColor,
            )),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
