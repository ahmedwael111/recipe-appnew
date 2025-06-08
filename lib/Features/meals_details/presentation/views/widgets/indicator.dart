import 'package:flutter/material.dart';
import 'package:recipes_app_new/constants.dart';

class Indicator extends StatelessWidget {
  const Indicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      color: kcolor,
      // backgroundColor: Colors.red,
      strokeWidth: 5,
      strokeAlign: 4,
    ));
  }
}
