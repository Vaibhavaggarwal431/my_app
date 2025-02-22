import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/auth/profile_incomplete.dart';

class SignupScreen extends StatefulWidget {
  @override
  SignupScreenState createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  String selectedGender = 'Female';
  String selectedAddressType = 'Permanent Address';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kSecondaryColor,
          elevation: 0,
          title: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: kPrimaryColor),
                onPressed: () => Navigator.pop(context),
              ),
              const Text('Create Account',
                  style: TextStyle(
                      fontSize: 16,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                      fontFamily: "golo")),
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Basic Details',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "golo",
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor)),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _buildTextField(
                      'First Name',
                      'Enter First Name',
                      Icons.person_outline,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildTextField(
                      'Last Name',
                      'Enter Last Name',
                      Icons.person_outline,
                    ),
                  ),
                ],
              ),
              _buildTextField(
                'Mobile Number',
                'Enter Mobile Number',
                Icons.phone_android,
              ),
              _buildTextField(
                'Email Address',
                'Enter Email Address',
                Icons.email_outlined,
              ),
              _buildTextField(
                'Date Of Birth',
                'DD/MM/YYYY',
                Icons.calendar_today,
              ),
              _buildGenderSelection(),
              Row(
                children: [
                  Expanded(child: _buildDropdown('Religion')),
                  const SizedBox(width: 12),
                  Expanded(child: _buildDropdown('Cast')),
                ],
              ),
              _buildDropdown('Education'),
              _buildDropdown('Business & Profession'),
              _buildTextField(
                'Business Name',
                'Enter Business Name',
                Icons.business,
              ),
              const SizedBox(height: 16),
              const Text('Address Details',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor)),
              const SizedBox(height: 16),
              _buildDropdown('Select Country'),
              Row(
                children: [
                  Expanded(child: _buildDropdown('Select State')),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(child: _buildDropdown('Select City')),
                ],
              ),
              _buildTextField('Address', 'Enter Address', Icons.location_on),
              _buildTextField('Pin Code', 'Enter Pin Code', Icons.pin),
              const Text(
                'Address save as ',
                style: TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.w600),
              ),
              _buildAddressSaveAs(),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfileIncompleteScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttoncolor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontFamily: "golo"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField2(
    String label,
    String hint,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: const TextStyle(
                  color: kPrimaryColor, fontWeight: FontWeight.w500)),
          TextField(
            decoration: InputDecoration(
                hintText: hint,
                border: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor))),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, String hint, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: const TextStyle(
                  fontFamily: "golo",
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w500)),
          TextField(
            decoration: InputDecoration(
                suffixIcon: Icon(
                  icon,
                  color: kPrimaryColor,
                ),
                hintText: hint,
                border: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor))),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdown(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(
                color: kPrimaryColor, fontWeight: FontWeight.w500)),
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
                labelText: label,
                border: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor))),
            items: <String>[
              'Option 1',
              'Option 2',
              'Option 3'
            ] // Replace with actual options
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {},
          ),
        ),
      ],
    );
  }

  Widget _buildGenderSelection() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Select Gender: ',
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                value: 'Male',
                activeColor: kPrimaryColor,
                groupValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value.toString();
                  });
                },
              ),
              const Text('Male'),
              Radio(
                value: 'Female',
                activeColor: kPrimaryColor,
                groupValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value.toString();
                  });
                },
              ),
              const Text('Female'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAddressSaveAs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio(
          value: 'Permanent Address',
          activeColor: kPrimaryColor,
          groupValue: selectedAddressType,
          onChanged: (value) {
            setState(() {
              selectedAddressType = value.toString();
            });
          },
        ),
        const Text('Permanent Address'),
        const SizedBox(width: 20),
        Radio(
          value: 'Current Address',
          activeColor: kPrimaryColor,
          groupValue: selectedAddressType,
          onChanged: (value) {
            setState(() {
              selectedAddressType = value.toString();
            });
          },
        ),
        const Text('Current Address'),
      ],
    );
  }
}
