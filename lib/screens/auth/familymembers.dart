import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/auth/familydetails.dart';

class FamilyDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kSecondaryColor,
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
              Image.asset("assets/Maskgroup.png"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Add members Details',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "golo",
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile Icon

                    const SizedBox(height: 24),

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
                    _buildDropdown('Business & Profession',
                        'Select Business & Profession'),

                    // Profile Image Upload
                    const SizedBox(height: 16),
                    const Text(
                      'Add Profile Image',
                      style: TextStyle(
                        fontFamily: "golo",
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Image.asset(
                      "assets/dottedcamera.png",
                      height: 100,
                      width: 100,
                      fit: BoxFit.fill,
                    ),

                    // Buttons
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              side: const BorderSide(color: kPrimaryColor),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              'Add Member',
                              style: TextStyle(
                                  color: kPrimaryColor, fontFamily: "golo"),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      FamilyDetails2Screen()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kPrimaryColor,
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
              color: kPrimaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: hint,
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
              color: kPrimaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              hintText: hint,
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
