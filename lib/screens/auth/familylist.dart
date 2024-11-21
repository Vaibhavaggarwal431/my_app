import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/auth/familydetails.dart';
import 'package:my_app/screens/auth/familymembers_details.dart';

class FamilyMembersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: kPrimaryColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Family Members',
          style: TextStyle(color: kPrimaryColor),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildMemberCard(
              name: 'XXXXXXXX',
              relation: 'Spouse',
              gender: 'Female',
              status: '',
              iconColor: Colors.blue,
              icon: Icons.favorite,
              ontap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FamilyMembersDetails()));
              }),
          _buildMemberCard(
              name: 'Aditya Jain, 18Y',
              relation: 'Son',
              gender: 'Male',
              status: 'Single',
              iconColor: Colors.orange,
              icon: Icons.face,
              ontap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FamilyMembersDetails()));
              }),
          _buildMemberCard(
              name: 'Aditya Jain, 18Y',
              relation: 'Daughter',
              gender: 'Female',
              status: 'Single',
              iconColor: Colors.green,
              icon: Icons.face_retouching_natural,
              ontap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FamilyMembersDetails()));
              }),
        ],
      ),
    );
  }

  Widget _buildMemberCard(
      {required String name,
      required String relation,
      required String gender,
      required String status,
      required Color iconColor,
      required IconData icon,
      required VoidCallback ontap}) {
    return InkWell(
      onTap: ontap,
      child: Card(
        elevation: 0,
        margin: const EdgeInsets.only(bottom: 12),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (status.isNotEmpty)
                      Text(
                        '$gender, $status',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: iconColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      icon,
                      color: iconColor,
                      size: 20,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      relation,
                      style: TextStyle(
                        color: iconColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
