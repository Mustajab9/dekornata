// ignore_for_file: prefer_const_constructors

import 'package:dekornata/screens/forgot_password/components/body.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  static const String routeName = '/forgot_password';

  // static Route route() {
  //   return MaterialPageRoute(
  //     settings: RouteSettings(name: routeName),
  //     builder: (_) => ForgotPasswordScreen(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lupa Password"),
      ),
      body: Body(),
    );
  }
}
