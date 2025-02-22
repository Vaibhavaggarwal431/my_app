import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: kPrimaryColor,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            const Text(
              'Notification',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: kPrimaryColor,
                fontFamily: "golo",
              ),
            ),
          ],
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 4, // Number of notifications
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'In Publishing And Graphic Design,',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: "golo",
                              color: kPrimaryColor),
                        ),
                        const Text(
                          'Lorem Ipsum Is A Placeholder',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "golo",
                              fontSize: 16,
                              color: kPrimaryColor),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'In Publishing And Graphic Design, Lorem Ipsum Is A Placeholder Text Commonly Used To Demonstrate The Visual Form Of A Document Or A Typeface Without Relying On Meaningful Content. Lorem Ipsum May...',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "golo",
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Image.asset('assets/notification.png')
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
