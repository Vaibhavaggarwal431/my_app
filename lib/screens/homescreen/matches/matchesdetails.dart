import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/homescreen/matches/profiledetails.dart';
import 'package:my_app/screens/profile.dart';

class Matchesdetails extends StatelessWidget {
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
              'Matches',
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
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search By Name...',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "golo",
                          fontSize: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 16,
                      ),
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(11),
                          bottomRight: Radius.circular(11)),
                      color: Colors.grey,
                    ),
                    height: 55,
                    width: 90,
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.tune),
                          Text(
                            "Filter",
                            style: TextStyle(
                                fontFamily: "golo",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Replace with your data length
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProfileDetailsApp2()));
                      },
                      child: _buildMemberCard());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Search For Here...',
        hintStyle: TextStyle(fontWeight: FontWeight.w300),
        border: OutlineInputBorder(),
        suffixIcon: Icon(Icons.search),
      ),
    );
  }

  Widget _buildMemberCard() {
    return Column(
      children: [
        Row(
          children: [
            Center(
              child: Image.asset(
                "assets/temple.png",
                height: 90,
                width: 90,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 16.0),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Rahul Jain',
                        style: TextStyle(
                          fontFamily: "golo",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.favorite,
                        color: grey1,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Software Engineer',
                    style: TextStyle(
                        fontFamily: "golo",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: grey1),
                  ),
                  SizedBox(width: 2.0),
                  Text(
                    '26 yrs | 5” 4’ | Hindu',
                    style: TextStyle(
                        fontFamily: "golo",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: grey1),
                  ),
                  SizedBox(width: 2.0),
                  Text(
                    'Jain, Hindu . Delhi, india',
                    style: TextStyle(
                        fontFamily: "golo",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: grey1),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Divider(
          thickness: 1,
        )
      ],
    );
  }
}
