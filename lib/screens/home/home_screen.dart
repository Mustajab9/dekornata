// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:dekornata/components/product_card.dart';
import 'package:dekornata/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:dekornata/components/custom_bottom_nav_bar.dart';
import 'package:dekornata/enums.dart';

import '../../size_config.dart';
import 'components/categories.dart';
import 'components/discount_banner.dart';
import 'components/home_header.dart';
import 'components/section_title.dart';
import 'components/special_offers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              HomeHeader(),
              SizedBox(height: getProportionateScreenWidth(10)),
              DiscountBanner(),
              SizedBox(height: getProportionateScreenWidth(30)),
              Categories(),
              SizedBox(height: getProportionateScreenWidth(30)),
              SpecialOffers(),
              SizedBox(height: getProportionateScreenWidth(30)),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                    child:
                        SectionTitle(title: "Popular Products", press: () {}),
                  ),
                  SizedBox(height: getProportionateScreenWidth(20)),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                          Product.demoProducts.length,
                          (index) {
                            if (Product.demoProducts[index].isPopular)
                              // ignore: curly_braces_in_flow_control_structures
                              return ProductCard(
                                  product: Product.demoProducts[index]);
                            return SizedBox.shrink();
                          },
                        ),
                        SizedBox(width: getProportionateScreenWidth(20)),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: getProportionateScreenWidth(30)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
