// ignore_for_file: prefer_const_constructors

import 'package:dekornata/blocs/cart/cart_bloc.dart';
import 'package:dekornata/blocs/products/products_bloc.dart';
import 'package:dekornata/screens/screen.dart';
import 'package:dekornata/routs.dart';
import 'package:dekornata/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'repositories/product/product_repository.dart';
import 'screens/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CartBloc()..add(CartStarted())),
        BlocProvider(
          create: (_) => ProductsBloc(productRepository: ProductRepository())
            ..add(LoadProducts()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dekornata Test',
        theme: theme(),
        initialRoute: SplashScreen.routeName,
        routes: routes,
      ),
    );
  }
}
