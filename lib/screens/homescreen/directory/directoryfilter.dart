import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/homescreen/directory/directorydetails.dart';

class Directoryfilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Text('Members Filter'),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.close_rounded),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(child: _buildTextField('Name', 'Enter Name')),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: _buildTextField('Surname', 'Enter Surname')),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: _buildDropdown('Gender', "Select Gender",
                              ['Select Gender', 'Male', 'Female']),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: _buildDropdown('Age', "Select Age",
                              ['Select Age', '18-25', '26-35', '36-45']),
                        ),
                      ],
                    ),
                    _buildDropdown('Business Profession', "Select Business...",
                        ['Select Business...', 'IT', 'Finance']),
                    Row(
                      children: [
                        Expanded(
                          child: _buildDropdown(
                              'Marital Status',
                              "Select Marital Status",
                              ['Select Marital Status', 'Single', 'Married']),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: _buildDropdown('Panth', "Select Panth",
                              ['Select Panth', 'Panth 1', 'Panth 2']),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: _buildDropdown('State', "Select State",
                              ['Select State', 'State 1', 'State 2']),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: _buildDropdown('City', "Select State",
                                ['Select City', 'City 1', 'City 2'])),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Clear action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffe6e6e6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Clear',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Directorydetails()));
                      // Apply filter action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttoncolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Apply Filter',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: kPrimaryColor,
              fontFamily: "golo",
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(fontWeight: FontWeight.w400),
              border: const OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdown(String label, String hint, List<String> items) {
    String? selectedValue;
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: kPrimaryColor,
              fontFamily: "golo",
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            width: double.infinity,
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                  labelText: label,
                  
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor))),
              value: selectedValue,
              items: items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                selectedValue = newValue;
              },
            ),
          ),
        ],
      ),
    );
  }
}
