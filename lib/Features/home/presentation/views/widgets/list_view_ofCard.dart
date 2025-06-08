import 'package:flutter/material.dart';

import 'package:recipes_app_new/Features/home/presentation/views/widgets/coustom_card.dart';
import 'package:recipes_app_new/Features/home/presentation/views/widgets/coutom_HeadOfCategoriewList.dart';
import 'package:recipes_app_new/core/models/card_model.dart';

class Categoryslistview extends StatefulWidget {
  const Categoryslistview({super.key});

  @override
  State<Categoryslistview> createState() => _CategoryslistviewState();
}

class _CategoryslistviewState extends State<Categoryslistview> {
  final List<CardModel> cardModels = [
    CardModel(
      image: 'assets/main_1.jpg', // Breakfast image
      name: 'Breakfast',
      time: '15 mins',
    ),
    CardModel(
      image: 'assets/main_2.jpg', // Lunch image
      name: 'Lunch',
      time: '30 mins',
    ),
    CardModel(
      image: 'assets/main_3.jpg', // Dinner image
      name: 'Dinner',
      time: '45 mins',
    ),
    CardModel(
      image: 'assets/main_4.jpg', // Snacks image
      name: 'Snacks',
      time: '10 mins',
    ),
    CardModel(
      image: 'assets/main_5.jpg', // Dessert image
      name: 'Dessert',
      time: '20 mins',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          const CoutomHeadOfCategoriewList(mainText: 'Main Categories'),
          SizedBox(
            height: 140,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: cardModels.length,
              itemBuilder: (context, index) {
                return CoustomCard(cardModel: cardModels[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
