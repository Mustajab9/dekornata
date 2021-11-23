// ignore_for_file:  prefer_const_constructors

import 'package:dekornata/screens/splash/components/body.dart';
import 'package:dekornata/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String routeName = '/splash';

  // static Route route() {
  //   return MaterialPageRoute(
  //     settings: RouteSettings(name: routeName),
  //     builder: (_) => SplashScreen(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
