// ignore_for_file: prefer_const_constructors

import 'package:dekornata/components/default_button.dart';
import 'package:dekornata/size_config.dart';
import 'package:flutter/material.dart';

// import '../../screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Login Berhasil",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Menu Utama",
            press: () => Navigator.pushNamed(context, '/home'),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
