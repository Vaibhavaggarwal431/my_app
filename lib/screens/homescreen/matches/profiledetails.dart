import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class ProfileDetailsApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileDetailsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfileDetailsScreen extends StatelessWidget {
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
                'Profile Details',
                style: TextStyle(
                  fontSize: 16,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: "golo",
                ),
              ),
            ],
          )),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Profile Section
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    color: Colors.white,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/temple.png', // Replace with actual image URL
                            height: 360,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 40,
                          left: 10,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            child: const Text(
                              'Tamara Jain, (#01201)',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'golo'),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 40,
                          right: 10,
                          child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              child: const Icon(Icons.favorite)),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            child: const Text(
                              'Software Engineer',
                              style: TextStyle(
                                color: grey1,
                                fontSize: 12,
                                fontFamily: 'golo',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Basic Details Section
                  const SectionHeader(
                      title: 'Basic Details', actionLabel: 'Created By:- Self'),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: _buildStatusItem(
                            image: "assets/height.png",
                            title: 'Weight And Height',
                            value: '5”6, 50 KG',
                            color: Colors.amber,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: _buildStatusItem(
                            image: "assets/swastika.png",
                            title: 'Weight And Height',
                            value: '5”6, 50 KG',
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
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
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: _buildStatusItem(
                      image: "assets/home.png",
                      title: 'Address',
                      value: 'Adarsh Nagar, Jaipur, Rajasthan, India',
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Career and Education Section
                  Container(
                    decoration: const BoxDecoration(color: Color(0xffddbfac)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Carrer And Education',
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
                            color: lightred,
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
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                          )),
                  const SizedBox(
                    height: 18,
                  ),
                  // Family Details Section
                  const SectionHeader(
                      title: 'Family Details',
                      actionLabel: 'Family Type: Nuclear'),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: _buildStatusItem(
                            image: "assets/father.png",
                            title: 'Father occupation',
                            value: 'government Servant',
                            color: Colors.amber,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: _buildStatusItem(
                            image: "assets/mother.png",
                            title: 'Mother occupation',
                            value: 'Housewife',
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(color: Colors.grey, width: 1)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/height.png",
                                      height: 60,
                                      width: 60,
                                    ),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Brother',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: "golo",
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          "1",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: "golo",
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(color: Colors.grey, width: 1)),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Sister",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: "golo",
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 4),
                                          Text(
                                            "1",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: "golo",
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: _buildStatusItem(
                      image: "assets/home.png",
                      title: 'lives in address',
                      value: 'Adarsh Nagar, Jaipur, Rajasthan, India',
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton.icon(
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
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Chat Now action
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    label: const Text(
                      'Chat Now',
                      style: TextStyle(color: Colors.black),
                    ),
                    icon: Image.asset("assets/whatsapp.png"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SectionHeader2 extends StatelessWidget {
  final String title;
  final String? actionLabel;

  const SectionHeader2({required this.title, this.actionLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          if (actionLabel != null)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kSecondaryColor,
              ),
              height: 20,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 2, bottom: 2, right: 8, left: 8),
                child: Text(
                  actionLabel!,
                  style: const TextStyle(color: kPrimaryColor, fontSize: 12),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  final String? actionLabel;

  const SectionHeader({required this.title, this.actionLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          if (actionLabel != null)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kSecondaryColor,
              ),
              height: 20,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 2, bottom: 2, right: 8, left: 8),
                child: Text(
                  actionLabel!,
                  style: const TextStyle(color: kPrimaryColor, fontSize: 12),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

Widget _buildStatusItem({
  String? image,
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
            image != ""
                ? Image.asset(
                    image!,
                    height: 60,
                    width: 60,
                  )
                : const SizedBox(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 12,
                        fontFamily: "golo",
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                      fontSize: 10,
                      fontFamily: "golo",
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
