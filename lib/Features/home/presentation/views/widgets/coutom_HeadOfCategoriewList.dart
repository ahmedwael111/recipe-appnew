import 'package:flutter/material.dart';

class CoutomHeadOfCategoriewList extends StatelessWidget {
  const CoutomHeadOfCategoriewList({
    super.key,
    required this.mainText,
  });
  final String mainText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Text(
            mainText,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Spacer(
            flex: 1,
          ),
          const Text(
            'See All ',
            style: TextStyle(fontSize: 14),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          )
        ],
      ),
    );
  }
}
