import 'package:flutter/material.dart';

import '../Tabs/cart_tab.dart';
import '../Tabs/categories_tab.dart';
import '../Tabs/home_tab.dart';
import '../Tabs/account_tab.dart';

class HomeScreen extends StatefulWidget {
static String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 1;
  var tabs = [
    Tab_Home(),
    Tab_Categories(),
    Tab_MyAccount(),
    Tab_Cart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple market'),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i){
          setState(() => currentIndex = i);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.view_carousel_outlined), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: 'My Account'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
      ),

      body: tabs[currentIndex],
    );
  }
}
