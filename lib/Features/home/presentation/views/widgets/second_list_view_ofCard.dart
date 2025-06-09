import 'package:flutter/material.dart';

import 'package:recipes_app_new/Features/home/presentation/views/widgets/coustom_card.dart'
    show CoustomCard;
import 'package:recipes_app_new/Features/home/presentation/views/widgets/coutom_HeadOfCategoriewList.dart';
import 'package:recipes_app_new/core/models/card_model.dart';

class SecondCategoryslistview extends StatefulWidget {
  const SecondCategoryslistview({super.key});

  @override
  State<SecondCategoryslistview> createState() =>
      _SecondCategoryslistviewState();
}

class _SecondCategoryslistviewState extends State<SecondCategoryslistview> {
  final List<CardModel> cardModels2 = [
    CardModel(
      image: 'assets/sec_3.jpg', // Pizza image
      name: 'Pizza',
      time: '20 mins',
    ),
    CardModel(
      image: 'assets/sec_5.jpg', // Pasta image
      name: 'Pasta',
      time: '30 mins',
    ),
    CardModel(
      image: 'assets/sec_1.jpg', // Burger image
      name: 'Burger',
      time: '25 mins',
    ),
    CardModel(
      image: 'assets/sec_4.jpg', // Salad image
      name: 'Salad',
      time: '15 mins',
    ),
    CardModel(
      image: 'assets/sec_2.jpg', // Steak image
      name: 'Steak',
      time: '45 mins',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          const CoutomHeadOfCategoriewList(mainText: 'Fames Dishs'),
          SizedBox(
            height: 140,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: cardModels2.length,
              itemBuilder: (context, index) {
                return CoustomCard(cardModel: cardModels2[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
