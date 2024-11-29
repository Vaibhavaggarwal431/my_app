import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/constants.dart';

class FamilyMembersDetails extends StatelessWidget {
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
                'Family Members Details',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "golo"),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Profile Section
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFFFFF),
                  Color(0xFFFFF5E4),
                ],
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/images/Layer_1.png'),
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/images/Layer_1.png",
                      height: 60,
                      width: 100,
                      fit: BoxFit.fill,
                    )
                  ],
                ),

                const SizedBox(height: 24),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rahul Jain (Son)',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "golo",
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.phone, size: 16, color: Colors.green),
                        SizedBox(width: 8),
                        Text(
                          '+91 8947X XXXXX',
                          style: TextStyle(
                              fontFamily: "golo",
                              color: grey1,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 16, color: kPrimaryColor),
                        SizedBox(width: 8),
                        Text(
                          'Jaipur, Rajasthan, India',
                          style: TextStyle(
                              fontFamily: "golo",
                              color: grey1,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),

                // Status Row
              ],
            ),
          ),

          const SizedBox(
            height: 18,
          ),

          // Education & Professional Details
          Container(
              child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: _buildStatusItem(
                      image: "assets/wedding.png",
                      title: 'Marital Status',
                      value: 'Single',
                      color: Colors.amber,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildStatusItem(
                      image: "assets/caleneder.png",
                      title: 'Date Of Birth',
                      value: '12-Nov-2024',
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              decoration: const BoxDecoration(color: Color(0xffddbfac)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Education & Professional Details',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "golo",
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                    Image.asset("assets/certificate.png")
                  ],
                ),
              ),
            ),
            ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Container(
                      color: Color(0xfffff7f3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Image.asset(
                                  "assets/degree.png",
                                  height: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Education",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "golo",
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      "BCA",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "golo",
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Divider(height: 1),
                        ],
                      ),
                    ))
          ]))
        ])));
  }
}

Widget _buildStatusItem({
  required String image,
  required String title,
  required String value,
  required Color color,
}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey, width: 1)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              height: 60,
              width: 60,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontFamily: "golo",
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                      fontSize: 14,
                      fontFamily: "golo",
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
