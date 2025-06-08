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
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color:
                Theme.of(context).brightness == Brightness.dark
                    ? Colors.grey[800]!
                    : Colors.black26,
            blurRadius: 10,
            offset: Offset(0, -2), // Shadow upwards
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        child: BottomNavigationBar(
          onTap: onItemTapped,
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kcolor,
          unselectedItemColor: Colors.grey,
          iconSize: 25.0,
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
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.gear),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
