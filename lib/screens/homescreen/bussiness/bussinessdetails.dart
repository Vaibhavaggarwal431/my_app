import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class RestaurantDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kSecondaryColor,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context),
              color: kPrimaryColor,
            ),
            const Text(
              'Decked Up By Garden Cafe...',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: "golo",
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Restaurant Images
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 155,
                            width: 224,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: const DecorationImage(
                                image: AssetImage(
                                    'assets/resturant.png'), // Replace with your image
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 2),
                        Column(
                          children: [
                            Container(
                              height: 74,
                              width: 128,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/resturant.png'), // Replace with your image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 74,
                              width: 128,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/resturant.png'), // Replace with your image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Text("Decked Up By Garden Cafe",
                          style: TextStyle(
                              fontFamily: "golo",
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 20,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text("Vaishali Nagar, Jaipur",
                            style: TextStyle(
                                fontFamily: "golo",
                                fontSize: 12,
                                color: grey1,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 20,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text("10:00 PM To 10:10 AM",
                            style: TextStyle(
                                fontFamily: "golo",
                                fontSize: 12,
                                color: grey1,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),

                    const SizedBox(height: 16),
                    const Text(
                      'Quick Information',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: blackcolour,
                        fontFamily: "golo",
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Chinese, Punjabi, Multicuisine, Mughlai, Sea Food, North Indian, Italian, Indian, Kathiyawadi, Continental, Hyderabadi, Maharashtrian, Kolhapuri, Afghani, Malwa, Peruvian',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: grey1,
                        fontFamily: "golo",
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Year of Establishment',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: blackcolour,
                        fontFamily: "golo",
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '2021',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: grey1,
                        fontFamily: "golo",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Action Buttons
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Call Now action
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  label: const Text(
                    'Call Now',
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: const Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Chat Now action
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  label: const Text(
                    'Chat Now',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                  icon: Image.asset("assets/whatsapp.png"),
                ),
                SizedBox(
                  height: 40,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.blue,
                        ),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.download,
                            color: Colors.blue,
                          ))),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
