import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InitialIcon extends StatelessWidget {
  const InitialIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.searchengin,
          size: 55,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Let\'s Search for Meals',
          style: TextStyle(fontSize: 18),
        )
      ],
    ));
  }
}
