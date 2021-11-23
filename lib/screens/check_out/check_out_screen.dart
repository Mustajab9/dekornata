// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:dekornata/components/order_summary.dart';
import 'package:dekornata/screens/check_out/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../../size_config.dart';
import '../screen.dart';

class CheckOutScreen extends StatelessWidget {
  String email;
  String nama;
  String alamat;
  String kota;
  String kodePos;

  CheckOutScreen({
    Key? key,
    this.email = '',
    this.nama = '',
    this.alamat = '',
    this.kota = '',
    this.kodePos = '',
  }) : super(key: key);

  static const String routeName = '/check_out';

  get kPrimaryColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: "Check Out"),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Customer Information',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(height: getProportionateScreenWidth(15)),
                  TextField(
                      autofocus: false,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (text) {
                        email = text;
                      }),
                  SizedBox(height: getProportionateScreenWidth(15)),
                  TextField(
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    onChanged: (text) {
                      nama = text;
                    },
                  ),
                  SizedBox(height: getProportionateScreenWidth(30)),
                  Text(
                    'Delivery Information',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(height: getProportionateScreenWidth(15)),
                  TextField(
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    onChanged: (text) {
                      alamat = text;
                    },
                  ),
                  SizedBox(height: getProportionateScreenWidth(15)),
                  TextField(
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    onChanged: (text) {
                      kota = text;
                    },
                  ),
                  SizedBox(height: getProportionateScreenWidth(15)),
                  TextField(
                    autofocus: false,
                    keyboardType: TextInputType.number,
                    onChanged: (text) {
                      kodePos = text;
                    },
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
        bottomNavigationBar: BottomAppBar(
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SummaryScreen(
                          nama: nama,
                          email: email,
                          alamat: alamat,
                          kota: kota,
                          kodePos: kodePos,
                        ),
                      ),
                    );
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
        ));
  }
}
