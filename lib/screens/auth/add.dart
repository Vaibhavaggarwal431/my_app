import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/notification/notification.dart';

class BusinessBannerPage extends StatelessWidget {
  const BusinessBannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[50],
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: kSecondaryColor,
            child: Icon(
              Icons.person,
              color: kPrimaryColor,
            ),
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
                  fontSize: 16,
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
            icon: const Icon(Icons.notifications_outlined, color: Colors.grey),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NotificationScreen()));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Promote Your Business in-App Banner',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'golo',
                  color: kPrimaryColor),
            ),
            const SizedBox(height: 11),
            const Text(
              'Select Your business Category',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'golo',
                  color: kPrimaryColor),
            ),
            const SizedBox(height: 11),
            const Text(
              'Add Details',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'golo',
                  color: kPrimaryColor),
            ),
            const SizedBox(
              height: 7,
            ),
            const TextField(
              maxLines: 2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Details',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "golo",
                      fontSize: 12)),
            ),
            const SizedBox(height: 16),
            const Text(
              'Upload Banner Image',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "golo",
                  fontSize: 16),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                border: const Border(
                  top: BorderSide(color: kPrimaryColor, width: 2),
                  left: BorderSide(color: kPrimaryColor, width: 2),
                  right: BorderSide(color: kPrimaryColor, width: 2),
                  bottom: BorderSide(color: kPrimaryColor, width: 2),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: CustomPaint(
                painter: DottedBorderPainter(),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_a_photo, size: 40),
                      SizedBox(height: 8),
                      Text(
                        'Upload Image',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: "golo",
                            fontSize: 12),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Image size should be in size, width 324px and height 1024px.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: "golo",
                            fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttoncolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DottedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = kPrimaryColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
