import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const Text(
              'Events Details',
              style: TextStyle(color: kPrimaryColor, fontSize: 16),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Event Image
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/temple.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Event Title and Details
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'title',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                        fontFamily: "golo"),
                  ),
                  const SizedBox(height: 12),

                  // Location
                  Row(
                    children: [
                      const Icon(Icons.location_on,
                          size: 20, color: Colors.grey),
                      const SizedBox(width: 8),
                      Text(
                        'location',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                            fontFamily: "golo"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Date
                  Row(
                    children: [
                      const Icon(Icons.calendar_today,
                          size: 20, color: Colors.grey),
                      const SizedBox(width: 8),
                      Text(
                        'date',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Organizer
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.grey[300],
                        child: const Icon(Icons.person,
                            size: 12, color: Colors.grey),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'organizer',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontFamily: "golo",
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // Event Details Section
                  const Text(
                    'Event Details',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Contrary To Popular Belief, Lorem Ipsum Is Not Simply Random Text. It Has Roots In A Piece Of Classical Latin Literature From 45 BC, Making It Over 2000 Years Old. Richard McClintock, A Latin Professor At Hampden-Sydney College In Virginia, Looked Up One Of The More Obscure Latin Words, Consectetur From A Lorem Ipsum Passage, And Going Through The Cites Of The Word In Classical Literature, Discovered The Undoubtable Source. Lorem Ipsum Comes From Sections 1.10.32 And 1.10.33 Of "De Finibus Bonorum Et Malorum" (The Extremes Of Good And Evil) By Cicero, Written In 45 BC. This Book Is A Treatise On The Theory Of Ethics, Very Popular During The Renaissance. The First Line Of Lorem Ipsum, "Lorem Ipsum Dolor Sit Amet..", Comes From A Line In Section 1.10.32.',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                        height: 1.5,
                        fontFamily: "golo"),
                  ),
                ],
              ),
            ),

            // Contact Section
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(color: Colors.grey[200]!),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Person',
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 14,
                            fontFamily: "golo",
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 4),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Bharat Lal',
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: "golo",
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '+91 XXXXX XXXXX',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontFamily: "golo",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
