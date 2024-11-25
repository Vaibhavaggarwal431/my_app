import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class NewsScreendetails extends StatelessWidget {
  final String location;
  final String title;
  final String imagePath;
  final String date;
  final String description;

  NewsScreendetails({
    required this.location,
    required this.title,
    required this.imagePath,
    required this.date,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kPrimaryColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          TextButton.icon(
              icon: const Icon(
                Icons.bookmark,
                color: Colors.grey,
              ),
              onPressed: () {},
              label: const Text(
                "Save",
                style: TextStyle(color: Colors.grey),
              )),
          TextButton.icon(
              icon: const Icon(
                Icons.share,
                color: Colors.grey,
              ),
              onPressed: () {},
              label: const Text(
                "Share",
                style: TextStyle(color: Colors.grey),
              )),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: kPrimaryColor,
              fontWeight: FontWeight.w500,
              fontFamily: "golo",
            ),
          ),
          Text(
            '$location | $date',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          Image.asset(
            imagePath,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: "golo",
              color: kPrimaryColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: "golo",
            ),
          ),
        ],
      ),
    );
  }
}
