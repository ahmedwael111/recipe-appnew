import 'package:flutter/material.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/container_link.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/grid_nutrition.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/row_information.dart';

import 'package:recipes_app_new/core/models/one_mealModel.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationBody extends StatelessWidget {
  const InformationBody({super.key, required this.oneMealModel});
  final OneMealModel oneMealModel;

  // Function to open the link
  Future<void> _launchURL(String url) async {
    // final String url = oneMealModel.sourceUrl; // The URL to open when clicked

    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.platformDefault);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RowOfInformation(oneMealModel: oneMealModel),
            const Divider(),
            GridOfNutrition(oneMealModel: oneMealModel),
            const Divider(),
            const Text(
              'Link of Recipe on Site:',
              style: TextStyle(fontSize: 16),
            ),
            GestureDetector(
              onTap: () => _launchURL(oneMealModel
                  .spoonacularSourceUrl), // Handle tap event to launch the URL
              child: ContainerOfLink(oneMealModel: oneMealModel),
            ),
          ],
        ),
      ),
    );
  }
}
