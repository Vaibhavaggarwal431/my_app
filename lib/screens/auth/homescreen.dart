import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/auth/notification.dart';

// Extract home content to separate widget
class HomeContent extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      'image': "assets/directory.png",
      'title': 'Directory',
      'color': Colors.orange
    },
    {
      'image': "assets/bussiness.png",
      'title': 'Business',
      'color': Colors.blue
    },
    {'image': "assets/marriage.png", 'title': 'Matches', 'color': Colors.red},
    {'image': "assets/news.png", 'title': 'News', 'color': Colors.green},
    {
      'image': "assets/calender2.png",
      'title': 'Events',
      'color': Colors.purple
    },
    {'image': "assets/job.png", 'title': 'Job', 'color': Colors.teal},
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
            child: const Icon(Icons.person, color: Colors.red),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Rajesh Jain',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  fontFamily: "golo"),
            ),
            Text(
              'Jaipur, Rajasthan',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
                fontFamily: "golo",
              ),
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
            CarouselSlider(
              options: CarouselOptions(
                height: 180.0,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 10 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: [
                'assets/images/image (2).png',
                'assets/splashscreen.png',
              ].map((banner) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(banner),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
            ),

            // Categories Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 18,
                      color: kPrimaryColor,
                      fontFamily: "golo",
                      fontWeight: FontWeight.bold,
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
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 180,
                      autoPlay: true,
                      viewportFraction: 0.92,
                      enlargeCenterPage: true,
                    ),
                    items: [
                      'assets/images/image (2).png',
                      'assets/splashscreen.png',
                    ].map((banner) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(banner),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }).toList(),
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
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              image,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontFamily: "golo",
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
