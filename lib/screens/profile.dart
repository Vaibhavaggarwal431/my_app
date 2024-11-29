import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/constants.dart';

class ProfilePage extends StatelessWidget {
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
              'Profile',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: "golo",
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFFFFFFF),
                    Color(0xffFFdfe2),
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
                        backgroundImage:
                            AssetImage('assets/images/Layer_1.png'),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Rahul Jain , 22 Years',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "golo",
                                fontWeight: FontWeight.w500,
                                color: blackcolour),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.brown,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text(
                                "ID:1201",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: [
                          Icon(Icons.phone, size: 16, color: Colors.green),
                          SizedBox(width: 8),
                          Text(
                            '+91 8947X XXXXX',
                            style: TextStyle(
                              fontFamily: "golo",
                              color: grey1,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Image.asset("assets/gmail.png"),
                          const SizedBox(width: 8),
                          const Text(
                            'Dessign@Gmail.com',
                            style: TextStyle(
                              fontFamily: "golo",
                              color: grey1,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Row(
                        children: [
                          Icon(Icons.location_on,
                              size: 16, color: kPrimaryColor),
                          SizedBox(width: 8),
                          Text(
                            'Jaipur, Rajasthan, India',
                            style: TextStyle(
                              fontFamily: "golo",
                              color: grey1,
                              fontSize: 14,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.edit_square,
                            color: kPrimaryColor,
                          )
                        ],
                      ),
                    ],
                  ),

                  // Status Row
                ],
              ),
            ),

            const SizedBox(height: 26),
            _buildSectionTitle('Basic Details'),
            // Basic Details Section
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        _buildDetailRow('DOB', '07-Nov-1997'),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Icon(
                            Icons.calendar_month,
                            color: Color(0xfffbdecd),
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        _buildDetailRow('Marital Status', 'Married'),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Image.asset('assets/layer.png'),
                        )
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        _buildDetailRow('Religion / Caste', 'Hindu / Jain'),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Image.asset('assets/buddha.png'),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    _buildDetailRow('Permanent Address',
                        'B-5, Jyoti Nagar Sekhar Marg, Opp. Imli Phatak, Jaipur, Rajasthan'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 26),
            // Family Details Section
            _buildSectionTitle(
              'Family Details',
            ),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.all(16),
              children: [
                _buildMemberCard(
                    name: 'XXXXXXXX',
                    relation: 'Spouse',
                    gender: 'Female',
                    status: '',
                    iconColor: Colors.lightGreenAccent,
                    icon: Icons.favorite,
                    ontap: () {}),
                _buildMemberCard(
                    name: 'Aditya Jain, 18Y',
                    relation: 'Son',
                    gender: 'Male',
                    status: 'Single',
                    iconColor: Colors.orange,
                    icon: Icons.face,
                    ontap: () {}),
                _buildMemberCard(
                    name: 'Aditya Jain, 18Y',
                    relation: 'Daughter',
                    gender: 'Female',
                    status: 'Single',
                    iconColor: Colors.green,
                    icon: Icons.face_retouching_natural,
                    ontap: () {}),
                _buildMemberCard(
                    name: 'Aditya Jain, 18Y',
                    relation: "Mother's Details",
                    gender: 'House Wife',
                    status: '',
                    iconColor: Colors.pink,
                    icon: Icons.family_restroom_sharp,
                    ontap: () {}),
                _buildMemberCard(
                    name: 'Aditya Jain, 18Y',
                    relation: "Father's Details",
                    gender: 'House Wife',
                    status: '',
                    iconColor: Colors.blue,
                    icon: Icons.sports_martial_arts_rounded,
                    ontap: () {}),
              ],
            ),

            const SizedBox(height: 26),

            // Business Card Info Section
            _buildSectionTitle(
              'Your Business Card Info',
            ),
            _buildBusinessCard(),
            const SizedBox(height: 40)
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(
    String title,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Text(title,
              style: const TextStyle(
                  fontFamily: "golo",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor)),
          const Spacer(),
          title == 'Your Business Card Info'
              ? const Icon(
                  Icons.download,
                  color: Colors.blue,
                )
              : const SizedBox()
        ],
      ),
    );
  }

  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                  color: grey1,
                  fontFamily: "golo",
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
          Text(value,
              style: const TextStyle(
                  color: blackcolour,
                  fontFamily: "golo",
                  fontSize: 14,
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _buildFamilyMember(String name, String status, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.blue),
              const SizedBox(width: 8),
              Text(name),
            ],
          ),
          Text(status, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildBusinessCard() {
    return Container(
      child: Image.asset(
        "assets/bussinesscard.png",
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildMemberCard(
      {required String name,
      required String relation,
      required String gender,
      required String status,
      required Color iconColor,
      required IconData icon,
      required VoidCallback ontap}) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: iconColor, width: 1),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Updated name display
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      Row(
                        children: [
                          Text(
                            '$gender',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                          if (status.isNotEmpty)
                            Text(
                              ', $status',
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
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: iconColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        relation,
                        style: TextStyle(
                          color: iconColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Icon(
                      icon,
                      color: iconColor,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
