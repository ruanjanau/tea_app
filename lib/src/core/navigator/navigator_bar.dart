import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../modules/presentation/views/favorites/teas_favorites.dart';
import '../../modules/presentation/views/home/home.dart';
import '../../modules/presentation/views/tea_list/tea_list_page.dart';

class NavigatorBar extends StatefulWidget {
  const NavigatorBar({super.key});

  @override
  State<NavigatorBar> createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar> {
  int _selectedIndex = 0;

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
        color: Colors.green[400]!,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: GNav(
            color: Colors.black38,
            backgroundColor: Colors.green[400]!,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.black38,
            iconSize: 30,
            gap: 8,
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
