import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipes_app_new/constants.dart';

class CostomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CostomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: onItemTapped,
        currentIndex: selectedIndex,
        type:
            BottomNavigationBarType.fixed, // Keeps items fixed, avoids shifting
        selectedItemColor: kcolor, // Color for selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
        iconSize: 28.0, // Size of icons
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.magnifyingGlass),
            label: 'Search',
          )
        ]);
  }
}
