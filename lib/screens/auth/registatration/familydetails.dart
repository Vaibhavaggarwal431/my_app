import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/auth/registatration/familylist.dart';

class FamilyDetails2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: kPrimaryColor),
              onPressed: () => Navigator.pop(context),
            ),
            const Text(
              'Family Details',
              style: TextStyle(
                  fontSize: 16,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: "golo"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FamilyMembersScreen()));
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/addmember.png",
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total members added',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "golo",
                              fontWeight: FontWeight.w400,
                              color: grey1,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '3',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "golo",
                              fontWeight: FontWeight.w500,
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_right,
                      color: kPrimaryColor,
                      size: 22,
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 17),

                  // Profile Icon
                  const Text(
                    'Add members Details',
                    style: TextStyle(
                      fontFamily: "golo",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Form Fields
                  _buildTextField(
                    'Mobile Number',
                    'Enter Mobile Number',
                    suffixIcon: Icons.phone_android,
                  ),
                  _buildDropdown('Relationship', 'Select Relationship'),
                  Row(
                    children: [
                      Expanded(
                        child: _buildTextField(
                          'First Name',
                          'Enter First Name',
                          suffixIcon: Icons.person_outline,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildTextField(
                          'Last Name',
                          'Enter Last Name',
                          suffixIcon: Icons.person_outline,
                        ),
                      ),
                    ],
                  ),
                  _buildTextField(
                    'Date Of Birth',
                    'DD/MM/YYYY',
                    suffixIcon: Icons.calendar_today,
                  ),
                  _buildDropdown('Marital Status', 'Select Marital Status'),
                  _buildDropdown('Education', 'Select Education'),
                  _buildDropdown(
                      'Business & Profession', 'Select Business & Profession'),

                  // Profile Image Upload
                  const SizedBox(height: 16),
                  const Text(
                    'Add Profile Image',
                    style: TextStyle(color: kPrimaryColor, fontFamily: "golo"),
                  ),
                  const SizedBox(height: 8),
                  Image.asset(
                    "assets/dottedcamera.png",
                    height: 78,
                    width: 78,
                    fit: BoxFit.fill,
                  ),
                  // Buttons
                  const SizedBox(height: 91),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: buttongreycolor,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Add Member',
                            style: TextStyle(color: grey1, fontFamily: "golo"),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: buttoncolor,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Submit',
                            style: TextStyle(
                                color: Colors.white, fontFamily: "golo"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint, {IconData? suffixIcon}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontFamily: "golo",
              fontSize: 12,
              color: kPrimaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(
                fontFamily: "golo",
                fontSize: 12,
                color: grey1,
                fontWeight: FontWeight.w400,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              suffixIcon: suffixIcon != null
                  ? Icon(suffixIcon, color: kPrimaryColor)
                  : null,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdown(String label, String hint) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontFamily: "golo",
              fontSize: 12,
              color: kPrimaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              labelText: hint,
              labelStyle: const TextStyle(
                fontFamily: "golo",
                fontSize: 12,
                color: grey1,
                fontWeight: FontWeight.w400,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
            items: [],
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
