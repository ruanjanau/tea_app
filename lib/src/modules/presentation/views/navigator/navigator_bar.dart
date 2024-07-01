import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../favorites/teas_favorites.dart';
import '../home/home.dart';
import '../tea_list/tea_list_page.dart';

class NavigatorBar extends StatefulWidget {
  final int initialIndex;

  const NavigatorBar({super.key, this.initialIndex = 0});

  @override
  State<NavigatorBar> createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  final screens = [
    const HomePage(),
    const TeaListPage(),
    const TeasFavorites(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.green[400],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: GNav(
            color: Colors.black38,
            backgroundColor: Colors.green[400]!,
            activeColor: Colors.white,
            iconSize: 26,
            textStyle: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            gap: 6,
            tabs: const [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.local_florist_outlined, text: 'Chás'),
              GButton(icon: Icons.favorite_border, text: 'Favoritos'),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
