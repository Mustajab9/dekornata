// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:dekornata/components/custom_bottom_nav_bar.dart';
import 'package:dekornata/enums.dart';

import 'components/body.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  static const String routeName = '/profil';

  // static Route route() {
  //   return MaterialPageRoute(
  //     settings: RouteSettings(name: routeName),
  //     builder: (_) => ProfilScreen(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
