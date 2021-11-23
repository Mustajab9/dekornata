// ignore_for_file: prefer_const_constructors

import 'package:dekornata/screens/sign_in/components/body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static const String routeName = '/sign_in';

  // static Route route() {
  //   return MaterialPageRoute(
  //     settings: RouteSettings(name: routeName),
  //     builder: (_) => SignInScreen(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Body(),
    );
  }
}
