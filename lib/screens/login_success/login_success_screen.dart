// ignore_for_file: prefer_const_constructors

import 'package:dekornata/screens/login_success/components/body.dart';
import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key}) : super(key: key);

  static const String routeName = '/login_success';

  // static Route route() {
  //   return MaterialPageRoute(
  //     settings: RouteSettings(name: routeName),
  //     builder: (_) => LoginSuccessScreen(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Berhasil"),
      ),
      body: Body(),
    );
  }
}
