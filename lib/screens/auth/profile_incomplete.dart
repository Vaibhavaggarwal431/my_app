import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/auth/registatration/familymembers.dart';

class ProfileIncompleteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[50],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: kPrimaryColor),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Text(
                  'Skip Now',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )),
          ),
        ],
      ),
      body: Column(
        children: [
          // Profile Header
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.red[100],
                  child: const Icon(Icons.person, size: 40, color: Colors.red),
                ),
                const SizedBox(width: 16),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rajesh Jain',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: kPrimaryColor,
                          fontFamily: "golo"),
                    ),
                    Text(
                      '+91 XXXXX XXXXX',
                      style:
                          TextStyle(color: grey1, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Profile Status
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your Profile Incomplete Now',
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: "golo"),
                ),
                const SizedBox(height: 4),
                const Text(
                  'You\'re Almost There! Complete Your Profile For Better Results.',
                  style: TextStyle(
                      color: grey1,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "golo"),
                ),
                const SizedBox(height: 16),
                // Custom Slider for profile completion
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity, // Make the slider full width
                      height:
                          100, // Increase the height of the slider for thickness
                      child: Slider(
                        value:
                            0.8, // This value can be dynamic based on profile completion
                        min: 0,
                        max: 1,
                        divisions: 10,
                        onChanged: (double value) {
                          // Handle slider value change if needed
                        },
                        activeColor: Colors.green,
                        inactiveColor: Colors.grey[300],
                        thumbColor: Colors.white, // Color of the thumb
                      ),
                    ),
                    const Text(
                      '80%', // Display the percentage on top of the slider
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                _buildProfileItem('Basic Details', true),
                _buildProfileItem('Address Details', true),
                _buildProfileItem('Education Details', true),
                _buildProfileItem('Business & Professional Details', true),
                _buildProfileItem('Family Details', false),
              ],
            ),
          ),
          const Spacer(),
          // Continue Button
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FamilyDetailsScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttoncolor,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileItem(String title, bool isCompleted) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isCompleted ? Colors.green : Colors.grey[300],
            ),
            padding: const EdgeInsets.all(4),
            child: const Icon(
              Icons.check,
              color: Colors.white,
              size: 16,
            ),
          ),
          const SizedBox(width: 12),
          Text(
            title,
            style: TextStyle(
              color: isCompleted ? Colors.green : Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
