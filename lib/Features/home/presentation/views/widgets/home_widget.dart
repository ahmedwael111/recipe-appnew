import 'package:flutter/material.dart';

import 'package:recipes_app_new/Features/home/presentation/views/widgets/c_text_field.dart';
import 'package:recipes_app_new/Features/home/presentation/views/widgets/carousel_widget.dart';
import 'package:recipes_app_new/Features/home/presentation/views/widgets/list_view_ofCard.dart';
import 'package:recipes_app_new/Features/home/presentation/views/widgets/second_list_view_ofCard.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(height: 60, child: CostomTextfield()),
        SizedBox(height: 200, child: Carousel()),
        Categoryslistview(),
        SecondCategoryslistview(),
      ],
    );
  }
}
