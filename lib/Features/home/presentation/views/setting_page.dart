import 'package:day_night_switch/day_night_switch.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app_new/constants.dart';
import 'package:recipes_app_new/core/utils/theme_cubit_cubit.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings'), centerTitle: true),
      body: ListView(
        children: [
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.dark_mode),
            title: const Text('Dark Mode'),
            trailing: Transform.scale(
              scale: 0.35,
              child: BlocBuilder<ThemeCubitCubit, ThemeData>(
                builder: (context, themeState) {
                  return DayNightSwitch(
                    // dragStartBehavior: DragStartBehavior.start,
                    value: themeState.brightness == Brightness.dark,
                    dayColor: kcolor,
                    nightColor: Colors.black,
                    onChanged: (value) {
                      setState(() {
                        BlocProvider.of<ThemeCubitCubit>(context).toggleTheme();
                      });
                    },
                  );
                },
              ),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Language'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // TODO: Implement language selection
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('About'),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: 'Recipes App',
                applicationVersion: '1.0.0',
                applicationLegalese: '© 2025 Your Name',
              );
            },
          ),
        ],
      ),
    );
  }
}
