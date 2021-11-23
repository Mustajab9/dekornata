// ignore_for_file: prefer_const_constructors

import 'package:dekornata/screens/screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: getProportionateScreenHeight(80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SummaryScreen()));
              },
              child: Text(
                'Order Now',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(25),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
