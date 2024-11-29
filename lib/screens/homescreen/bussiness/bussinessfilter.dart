import 'package:flutter/material.dart';
import 'package:my_app/screens/homescreen/bussiness/bussniess.dart';
import 'package:my_app/constants.dart';

class BusinessFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Text('Business Filter'),
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
                    const Text(
                      'Select City',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "golo",
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'State',
                                style: TextStyle(
                                  color: Color(0xff9b2631),
                                  fontFamily: "golo",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 5),
                              DropdownButtonHideUnderline(
                                child: DropdownButtonFormField<String>(
                                  decoration: const InputDecoration(
                                    labelText: 'Select State',
                                    border: OutlineInputBorder(),
                                  ),
                                  items: <String>[
                                    'Select State',
                                    'State 1',
                                    'State 2'
                                  ].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'City',
                                style: TextStyle(
                                  color: Color(0xff9b2631),
                                  fontFamily: "golo",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 5),
                              DropdownButtonHideUnderline(
                                child: DropdownButtonFormField<String>(
                                  decoration: const InputDecoration(
                                    labelText: 'Select City',
                                    border: OutlineInputBorder(),
                                  ),
                                  items: <String>[
                                    'Select City',
                                    'City 1',
                                    'City 2'
                                  ].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Select Category',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "golo",
                      ),
                    ),
                    const SizedBox(height: 10),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 8 / 2,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 4,
                      ),
                      itemCount: 9, // Including all categories
                      itemBuilder: (context, index) {
                        List<String> categories = [
                          'Restaurants',
                          'Education',
                          'Hospitals',
                          'Beauty Spa',
                          'Contractors',
                          'Rent & Hire',
                          'Hotel',
                          'Home Decor',
                          'Event Organisers'
                        ];
                        return CheckboxListTile(
                          title: Text(
                            categories[index],
                            style: const TextStyle(fontSize: 12),
                          ),
                          value: false, // Replace with actual state management
                          onChanged: (bool? value) {},
                          controlAffinity: ListTileControlAffinity.leading,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
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
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Bussiness()));
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
}
