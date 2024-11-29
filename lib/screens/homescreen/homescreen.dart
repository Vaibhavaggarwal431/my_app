import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_app/screens/homescreen/bussiness/bussinessfilter.dart';
import 'package:my_app/screens/homescreen/bussiness/bussniess.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/homescreen/job/job.dart';
import 'package:my_app/screens/homescreen/matches/matchesfilteer.dart';
import 'package:my_app/screens/homescreen/directory/directoryfilter.dart';
import 'package:my_app/component/imagecarouselwithdots.dart';
import 'package:my_app/screens/homescreen/newsscrereen.dart';
import 'package:my_app/screens/notification/notification.dart';

// Extract home content to separate widget
class HomeContent extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      'image': "assets/directory.png",
      'title': 'Directory',
      'color': Colors.orange,
      'ontap': () {}
    },
    {
      'image': "assets/bussiness.png",
      'title': 'Business',
      'color': Colors.blue,
      'ontap': () {}
    },
    {
      'image': "assets/marriage.png",
      'title': 'Matches',
      'color': Colors.red,
      'ontap': () {}
    },
    {
      'image': "assets/news.png",
      'title': 'News',
      'color': Colors.green,
      'ontap': () {}
    },
    {
      'image': "assets/calender2.png",
      'title': 'Events',
      'color': Colors.purple,
      'ontap': () {}
    },
    {
      'image': "assets/job.png",
      'title': 'Job',
      'color': Colors.teal,
      'ontap': () {}
    },
  ];
  int _currentIndex = 0;
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            // Banner Carousel
            const SizedBox(
              height: 180,
              width: double.infinity,
              child: ImageCarouselWithDots(
                images: [
                  'assets/images/image (2).png',
                  'assets/splashscreen.png',
                ],
              ),
            ),
            const SizedBox(height: 32),
            // Categories Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 16,
                      color: kPrimaryColor,
                      fontFamily: "golo",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 16),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    children: categories.map((category) {
                      return _buildCategoryCard(
                          image: category['image'],
                          title: category['title'],
                          color: category['color'],
                          ontap: () {
                            category['title'] == "Business"
                                ? Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => BusinessFilter()))
                                : category['title'] == "Job"
                                    ? Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Job()))
                                    : category['title'] == "News"
                                        ? Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    NewsScreen()))
                                        : category['title'] == "Directory"
                                            ? Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Directoryfilter()))
                                            : category['title'] == "Matches"
                                                ? Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            MatchesFilter()))
                                                : null;
                          });
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  const SizedBox(
                    height: 160,
                    width: double.infinity,
                    child: ImageCarouselWithDots(
                      images: [
                        'assets/images/image (2).png',
                        'assets/splashscreen.png',
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard({
    required String image,
    required String title,
    required Color color,
    required VoidCallback ontap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: kPrimaryColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              ontap();
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                image,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
                fontFamily: "golo",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff202644)),
          ),
        ],
      ),
    );
  }
}
