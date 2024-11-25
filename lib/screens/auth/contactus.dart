import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kSecondaryColor,
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
              'Contact Us',
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w500,
                fontFamily: "golo",
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2, // 2 items per row
          mainAxisSpacing: 20, // Vertical spacing
          crossAxisSpacing: 20, // Horizontal spacing
          children: [
            _buildContactOption(
              title: 'Call Us',
              icon: "assets/callaccept.png",
              onTap: () {
                // Add phone call functionality
              },
            ),
            _buildContactOption(
              title: 'Chat Us',
              icon: "assets/chat.png",
              onTap: () {
                // Add chat functionality
              },
            ),
            _buildContactOption(
              title: 'Email Us',
              icon: "assets/email.png",
              onTap: () {
                // Add email functionality
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactOption({
    required String title,
    required String icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,

              // You can change this to match your theme color
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontFamily: "golo",
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
