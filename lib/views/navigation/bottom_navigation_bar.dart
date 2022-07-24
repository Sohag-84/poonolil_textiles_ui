// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poonolil_textiles_ui/views/navigation/home_screen.dart';
import 'package:poonolil_textiles_ui/views/navigation/live_screen.dart';
import 'package:poonolil_textiles_ui/views/navigation/profile_screen.dart';
import 'package:poonolil_textiles_ui/views/navigation/search_screen.dart';
import 'package:poonolil_textiles_ui/views/navigation/shop_screen.dart';

import '../../constant/colors.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  final _pages = [
    HomeScreen(),
    LiveScreen(),
    SearchScreen(),
    ShopScreen(),
    ProfileScreen(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colour.primary_color,
        unselectedItemColor: Colour.black_color,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,size: 25,),label: "HOME"),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.satelliteDish,size: 25,),label: "LIVE"),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined,size: 25,),label: "SEARCH"),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.bagShopping),label: "SHOP"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline,size: 25,),label: "PROFILE"),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
