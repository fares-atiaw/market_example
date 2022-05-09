import 'package:flutter/material.dart';
import 'package:market_example/UI/Screens/home.dart';
import 'package:market_example/theme.dart';

import 'UI/Screens/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
        ProductsDetails.routeName : (context) => ProductsDetails(),
      },
      initialRoute: HomeScreen.routeName,

      theme: MyTheme.LightTheme,

    );
  }
}