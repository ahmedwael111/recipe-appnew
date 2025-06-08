import 'package:flutter/material.dart';

import 'package:recipes_app_new/Features/search/presentation/view/search_view.dart';
import 'package:recipes_app_new/constants.dart';

class CostomTextfield extends StatelessWidget {
  const CostomTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SearchView.id);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: TextField(
          enabled: false, // Disable text editing
          decoration: InputDecoration(
            filled: true,
            // fillColor: Colors.orange,
            hintText: 'Search',
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: kcolor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: kcolor),
            ),
          ),
          // style: const TextStyle(color: kcolor),
        ),
      ),
    );
  }
}
