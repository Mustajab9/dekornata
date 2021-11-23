// ignore_for_file: prefer_const_constructors, avoid_print, no_duplicate_case_values

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'screens/screen.dart';

final Map<String, WidgetBuilder> routes = {
  CartScreen.routeName: (context) => const CartScreen(),
  CheckOutScreen.routeName: (context) => CheckOutScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  SummaryScreen.routeName: (context) => SummaryScreen(),
};
