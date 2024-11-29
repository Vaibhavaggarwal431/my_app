import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/auth/registatration/familymembers_details.dart';

class FamilyMembersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kSecondaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context),
              color: kPrimaryColor,
            ),
            const SizedBox(width: 8),
            const Text(
              'Family Members',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: "golo"),
            ),
          ],
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
      child: Stack(
        children: [
          Card(
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
                        // Updated name display
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
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: iconColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          relation,
                          style: TextStyle(
                            color: iconColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Icon(
                        icon,
                        color: iconColor,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
