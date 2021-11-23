// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, camel_case_types, must_be_immutable, no_logic_in_create_state

import 'dart:math';

import 'package:dekornata/components/custom_bottom_nav_bar.dart';
import 'package:dekornata/components/order_summary.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constants.dart';
import '../../enums.dart';
import '../../size_config.dart';
import 'components/custom_app_bar.dart';

class SummaryScreen extends StatefulWidget {
  String nama;
  String email;
  String alamat;
  String kodePos;
  String kota;

  SummaryScreen({
    Key? key,
    this.nama = '',
    this.email = '',
    this.alamat = '',
    this.kodePos = '',
    this.kota = '',
  }) : super(key: key);

  static const String routeName = '/summary';

  @override
  _summaryScreen createState() =>
      _summaryScreen(nama, email, alamat, kota, kodePos);
}

class _summaryScreen extends State<SummaryScreen> {
  int randomNumber() {
    int min = 100000;
    int max = 999999;

    var randomizer = new Random();
    var rNum = min + randomizer.nextInt(max - min);

    return rNum;
  }

  String dateFormat() {
    String day = DateFormat.d().format(DateTime.now());
    String mount = DateFormat.M().format(DateTime.now());
    String year = DateFormat.y().format(DateTime.now());

    return '$day$mount$year';
  }

  String nama;
  String email;
  String alamat;
  String kodePos;
  String kota;
  _summaryScreen(this.nama, this.email, this.alamat, this.kodePos, this.kota);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Summary'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Invoice Number',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: getProportionateScreenWidth(5)),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'INVOICE/${dateFormat()}/DEKORNATA/${randomNumber()}',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: kPrimaryColor),
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(30)),
                Text(
                  'Customer Information',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    email,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    nama,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(30)),
                Text(
                  'Delivery Information',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    alamat,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    kota,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    kodePos,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(30)),
                Text(
                  'Order Summary',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: getProportionateScreenWidth(50)),
                OrderSummary(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
