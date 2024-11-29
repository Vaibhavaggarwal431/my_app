import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/homescreen/newsdetails.dart';

class NewsScreen extends StatelessWidget {
  final List<Map<String, String>> newsItems = [
    {
      'location': 'Jaipur is beautful place peolpe should come here',
      'title':
          'He’s Got Good Head On His Shoulder, Understands The Game Well: Rohit On Bumrah’s V.',
      'image': 'assets/temple.png',
    },
    {
      'location': 'India is beautful place peolpe should come here',
      'title':
          'In Publishing And Graphic Design, Lorem Ipsum Is A Placeholder.',
      'image': 'assets/temple.png',
    },
    {
      'location': 'Rajasthan is beautful place peolpe should come here',
      'title':
          'In Publishing And Graphic Design, Lorem Ipsum Is A Placeholder.',
      'image': 'assets/temple.png',
    },
    {
      'location': 'Rajasthan is beautful place peolpe should come here',
      'title':
          'In Publishing And Graphic Design, Lorem Ipsum Is A Placeholder.',
      'image': 'assets/temple.png',
    },
  ];

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
              'News',
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w500,
                fontFamily: "golo",
              ),
            ),
          ],
        ),
      ),
     
      body: ListView.builder(
        itemCount: newsItems.length + 1, // +1 for the latest news card
        itemBuilder: (context, index) {
          if (index == 0) {
            return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NewsScreendetails(
                            title: newsItems.first['title'] ?? "",
                            imagePath: newsItems.first['image'] ?? "",
                            location: newsItems.first['location'] ?? "",
                            description: newsItems.first['title'] ?? "",
                            date: "12/08/2023",
                          )));
                },
                child: _buildLatestNewsCard(newsItems.first['image'] ?? ""));
          } else {
            final item = newsItems[index - 1]; // Adjust index for news items
            return _buildNewsItem(
              item['location']!,
              item['title']!,
              item['image']!,
            );
          }
        },
      ),
    );
  }

  Widget _buildLatestNewsCard(String imagepath) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: kPrimaryColor,
                  child: const Padding(
                    padding:
                        EdgeInsets.only(top: 2, bottom: 2, left: 8, right: 8),
                    child: Text(
                      'Latest News',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: "golo",
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                const Expanded(
                  child: Text(
                    'He’s Got Good Head On His Shoulder, Understands The Game Well: Rohit On Bumrah’s V.',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "golo",
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              imagepath,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text(
                  'Jaipur',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "golo",
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                TextButton.icon(
                  label: const Text(
                    "Save",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark,
                    color: Colors.grey,
                  ),
                ),
                TextButton.icon(
                  label: const Text(
                    "Share",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const Divider()
          ],
        ),
      ),
    );
  }

  Widget _buildNewsItem(String location, String title, String imagePath) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        location,
                        style: const TextStyle(
                            fontSize: 16,
                            fontFamily: "golo",
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        title,
                        maxLines: null,
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: "golo",
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
                Image.asset(
                  imagePath,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  'Jaipur',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "golo",
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                TextButton.icon(
                  label: const Text(
                    "Save",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark,
                    color: Colors.grey,
                  ),
                ),
                TextButton.icon(
                  label: const Text(
                    "Share",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
