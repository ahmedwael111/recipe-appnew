import 'package:flutter/material.dart';
import 'package:recipes_app_new/constants.dart';
import 'package:recipes_app_new/core/models/one_mealModel.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomLink extends StatelessWidget {
  const BottomLink({super.key, required this.oneMealModel});

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
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(12),
        backgroundColor: kcolor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        // maximumSize: const Size(double.infinity, 60),
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed:
          () => _launchURL(
            oneMealModel.spoonacularSourceUrl,
          ), // Handle tap event to launch the URL,
      child: Center(
        child: Text(
          'More Details of Recipe on Site',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
