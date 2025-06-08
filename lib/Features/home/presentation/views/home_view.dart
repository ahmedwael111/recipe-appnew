import 'package:day_night_switch/day_night_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app_new/Features/home/presentation/views/setting_page.dart';
import 'package:recipes_app_new/Features/home/presentation/views/splash_view.dart';
import 'package:recipes_app_new/Features/home/presentation/views/widgets/costom_BottomNavigationBar.dart';
import 'package:recipes_app_new/Features/home/presentation/views/widgets/home_widget.dart';
import 'package:recipes_app_new/Features/search/presentation/view/search_view.dart';
import 'package:recipes_app_new/constants.dart';
import 'package:recipes_app_new/core/utils/theme_cubit_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static String id = 'HomeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  // List of views (screens) corresponding to each tab in the BottomNavigationBar
  final List<Widget> _views = [
    const HomeWidget(),
    const SearchView(),
    const SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          _selectedIndex == 0
              ? AppBar(
                automaticallyImplyLeading: false,

                title: Row(
                  children: [
                    const Text(
                      'Recipe',
                      style: TextStyle(
                        color: kcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    const Text(
                      'App',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(flex: 1),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SplashPage()),
                        );
                      },
                      icon: Icon(Icons.settings, size: 32, color: kcolor),
                    ),
                  ],
                ),
              )
              : null,
      body: _views[_selectedIndex],
      bottomNavigationBar: CostomBottomNavigationBar(
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
