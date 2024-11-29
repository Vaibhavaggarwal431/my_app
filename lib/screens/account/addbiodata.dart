import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/account/addbiodata2.dart';

class AddBioDataScreen extends StatefulWidget {
  @override
  State<AddBioDataScreen> createState() => _AddBioDataScreenState();
}

class _AddBioDataScreenState extends State<AddBioDataScreen> {
  String? selectedProfileType;
  String? selectedGender;

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
              'Add Bio Data',
              style: TextStyle(
                fontSize: 16,
                color: kPrimaryColor,
                fontWeight: FontWeight.w500,
                fontFamily: "golo",
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/biodata1.png",
                height: 57,
                width: 57,
              ),
            ),
            const Center(
              child: Text(
                'Who this profile is being created for?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: kPrimaryColor,
                  fontFamily: "golo",
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Updated UI for profile type selection with spacing
            Wrap(
              spacing: 16.0, // Horizontal space between buttons
              runSpacing: 12.0, // Vertical space between rows if needed
              children: [
                _buildToggleButton('Self'),
                _buildToggleButton('Daughter'),
                _buildToggleButton('Son'),
                _buildToggleButton('Sister'),
                _buildToggleButton('Brother'),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Select Gender',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: kPrimaryColor,
                      fontFamily: "golo"),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  _buildGenderRadio('Male'),
                  const SizedBox(
                    width: 10,
                  ),
                  _buildGenderRadio('Female'),
                ],
              ),
            ),
            const Spacer(),
            Container(
              height: 42,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Addbiodata2()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff9b2631),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Submit And Next',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildToggleButton(String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedProfileType = label;
        });
      },
      child: Container(
        height: 44,
        width: 106,
        decoration: BoxDecoration(
          border: Border.all(
              color: selectedProfileType == label ? kPrimaryColor : grey1),
          color: selectedProfileType == label
              ? const Color.fromRGBO(255, 238, 227, 1)
              : Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: selectedProfileType == label ? kPrimaryColor : grey1,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGenderRadio(String gender) {
    return Container(
      height: 46,
      width: 110,
      decoration: BoxDecoration(
        border:
            Border.all(color: gender == selectedGender ? kPrimaryColor : grey1),
        color: gender == selectedGender
            ? const Color.fromRGBO(255, 238, 227, 1)
            : Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Radio<String>(
            value: gender,
            groupValue: selectedGender,
            activeColor: kPrimaryColor,
            onChanged: (value) {
              setState(() {
                selectedGender = value;
              });
            },
          ),
          Center(
            child: Text(
              gender,
              style: TextStyle(
                color: selectedGender == gender ? kPrimaryColor : grey1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
