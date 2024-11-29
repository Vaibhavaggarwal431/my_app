import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/homescreen/eventdetails.dart';
import 'package:my_app/screens/homescreen/newsscrereen.dart';
import 'package:my_app/screens/notification/notification.dart';

class EventsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> events = [
    {
      'title': 'Deepawali Or Diwali Is An Indian Festival',
      'image': 'assets/temple.png',
      'date': '12-12-2024',
      'location': 'Jaipur, Rajasthan',
      'organizer': 'Rahul Jain',
      'hasImage': true,
    },
    {
      'title': 'Deepawali Or Diwali Is An Indian Festival',
      'image': 'assets/temple.png',
      'date': '12-12-2024',
      'location': '',
      'organizer': '',
      'hasImage': true,
    },
    {
      'title': 'Deepawali Or Diwali Is An Indian Festival',
      'image': 'assets/temple.png',
      'date': '12-12-2024',
      'location': 'Jaipur, Rajasthan',
      'organizer': 'Rahul Jain',
      'hasImage': true,
    },
    {
      'title': 'Deepawali Or Diwali Is An Indian Festival',
      'image': 'assets/temple.png',
      'date': '12-12-2024',
      'location': '',
      'organizer': '',
      'hasImage': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[50],
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.red[100],
            child: const Icon(Icons.person, color: kPrimaryColor),
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rajesh Jain',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontFamily: "golo"),
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Text(
                  'Jaipur, Rajasthan',
                  style: TextStyle(
                    color: grey1,
                    fontSize: 12,
                    fontFamily: "golo",
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: kPrimaryColor,
                )
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon:
                const Icon(Icons.notifications_outlined, color: kPrimaryColor),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NotificationScreen()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Upcoming Events Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Upcoming Events',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "golo",
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kSecondaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      'View All',
                      style: TextStyle(
                        fontFamily: "golo",
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: events.length,
                  itemBuilder: (context, index) {
                    final event = events[index];
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const EventDetailsScreen()));
                      },
                      child: Card(
                        margin: const EdgeInsets.only(bottom: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            // Event Image
                            ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(12),
                              ),
                              child: Image.asset(
                                event['image'],
                                width: 200,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 200,
                                    child: Text(
                                      event['title'],
                                      maxLines: null,
                                      style: const TextStyle(
                                          fontFamily: "golo",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: kPrimaryColor),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.calendar_today,
                                          size: 16, color: Colors.grey),
                                      const SizedBox(width: 4),
                                      Text(
                                        event['date'],
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14,
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
                    );
                  },
                ),
              ),

              // Events List
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: events.length,
                itemBuilder: (context, index) {
                  final event = events[index];
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const EventDetailsScreen()));
                    },
                    child: Card(
                      margin: const EdgeInsets.only(bottom: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Event Image
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(12),
                            ),
                            child: Image.asset(
                              event['image'],
                              width: double.infinity,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  event['title'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: kPrimaryColor,
                                  ),
                                ),
                                if (event['location'].isNotEmpty) ...[
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      const Icon(Icons.location_on,
                                          size: 16, color: Colors.grey),
                                      const SizedBox(width: 4),
                                      Text(
                                        event['location'],
                                        style: TextStyle(
                                          fontFamily: "golo",
                                          color: Colors.grey[600],
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    const Icon(Icons.calendar_today,
                                        size: 16, color: Colors.grey),
                                    const SizedBox(width: 4),
                                    Text(
                                      event['date'],
                                      style: TextStyle(
                                        fontFamily: "golo",
                                        color: Colors.grey[600],
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                if (event['organizer'].isNotEmpty) ...[
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.grey[300],
                                        child: const Icon(Icons.person,
                                            size: 12, color: Colors.grey),
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        event['organizer'],
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
