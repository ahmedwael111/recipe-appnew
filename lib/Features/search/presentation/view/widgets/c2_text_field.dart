import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:recipes_app_new/Features/home/presentation/manager/request_meals_cubit.dart';
import 'package:recipes_app_new/constants.dart';

class C2Textfield extends StatefulWidget {
  const C2Textfield({
    super.key,
  });

  @override
  State<C2Textfield> createState() => _C2TextfieldState();
}

class _C2TextfieldState extends State<C2Textfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextField(
        onSubmitted: (value) {
          setState(() {
            BlocProvider.of<RequestMealsCubit>(context)
                .getMeals(mealName: value);
          });
        },
        cursorColor: kcolor,
        decoration: InputDecoration(
          filled: true,
          // fillColor: Colors.grey.shade100,
          hintText: 'Search',
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: kcolor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: kcolor),
          ),
        ),
        // style: const TextStyle(color: kcolor),
      ),
    );
  }
}
