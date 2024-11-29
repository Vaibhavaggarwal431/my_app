import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/profile.dart';

class Directorydetails extends StatelessWidget {
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
              'Members',
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
            _buildSearchField(),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Replace with your data length
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProfilePage()));
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage:
                  AssetImage('assets/Maskgroup.png'), // Placeholder image
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Rahul Jain',
                        style: TextStyle(
                            fontFamily: "golo",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: buttoncolor,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Text(
                            "ID:1201",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/briefcase2.png",
                        height: 15,
                        width: 15,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 2.0),
                      const Text(
                        'Advocate, Exp. 4 Year’s',
                        style: TextStyle(
                            fontFamily: "golo",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: grey1),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4.0),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.green,
                        size: 20,
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        '+91 89477 XXXXX',
                        style: TextStyle(
                            fontFamily: "golo",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: grey1),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4.0),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: kPrimaryColor,
                        size: 20,
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        'Jaipur, Rajasthan',
                        style: TextStyle(
                            fontFamily: "golo",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: grey1),
                      ),
                    ],
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
