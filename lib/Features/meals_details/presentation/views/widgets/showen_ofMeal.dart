import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:recipes_app_new/Features/meals_details/presentation/manager/one_meal_cubit.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/tabBar_view.dart';
import 'package:recipes_app_new/constants.dart';
import 'package:recipes_app_new/core/models/one_mealModel.dart';

class ShowenOfMeal extends StatefulWidget {
  const ShowenOfMeal({super.key});

  @override
  State<ShowenOfMeal> createState() => _ShowenOfMealState();
}

class _ShowenOfMealState extends State<ShowenOfMeal> {
  @override
  Widget build(BuildContext context) {
    final oneMealModel = BlocProvider.of<OneMealCubit>(context).oneMealModel!;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder:
              (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  expandedHeight: 300,
                  pinned: true,
                  floating: true,
                  backgroundColor: kcolor,
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  // leading: IconButton(
                  //   icon: const Icon(
                  //     Icons.arrow_back_ios_new,
                  //     color: Colors.white,
                  //   ),
                  //   onPressed: () {
                  //     Navigator.pop(context);
                  //   },
                  // ),
                  flexibleSpace: FlexibleSpaceBar(
                    title: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        oneMealModel.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          // overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    background: Image.network(
                      oneMealModel.image,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/webvilla-hv1MrBzGGNY-unsplash.jpg',
                          fit: BoxFit.fitWidth,
                        );
                      },
                    ),
                    centerTitle: true,
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverAppBarDelegate(
                    const TabBar(
                      indicatorColor: kcolor,

                      indicatorWeight: 5,
                      labelColor: kcolor,
                      labelStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      tabs: [
                        Tab(text: 'Information'),
                        Tab(text: 'Ingradiants'),
                        Tab(text: 'Instractions'),
                      ],
                    ),
                  ),
                ),
              ],
          body: CoustomTabbarView(oneMealModel: oneMealModel),
        ),
      ),
    );
  }
}

// Helper class for SliverPersistentHeader
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _SliverAppBarDelegate(this.tabBar);

  @override
  double get minExtent => tabBar.preferredSize.height;
  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color:
          Theme.of(context).brightness == Brightness.light
              ? Colors.white
              : Colors.black12, // Set background color for the tab bar
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
