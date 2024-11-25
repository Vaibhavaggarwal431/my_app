import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/auth/aboutus.dart';
import 'package:my_app/screens/auth/contactus.dart';
import 'package:my_app/screens/auth/privacypolicy.dart';
import 'package:my_app/screens/auth/termsandcondition.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  void _showlogoutAccountDialog2(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 200,
                child: Text(
                  'your sure You want Logout account?',
                  maxLines: null,
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontFamily: "golo",
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close))
            ],
          ),
          actions: <Widget>[
            Row(
              children: [
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle submit action
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffdadce3),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child:
                        const Text('Yes', style: TextStyle(color: Colors.grey)),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle submit action
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child:
                        const Text('No', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  void _showDeleteAccountDialog2(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          constraints: const BoxConstraints(
            maxHeight: 250,
            minWidth: double.infinity,
          ),
          child: AlertDialog(
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 200,
                  child: Text(
                    'Are you sure you want to delete your account?',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: "golo",
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.close))
              ],
            ),
            actions: <Widget>[
              Row(
                children: [
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle submit action
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffdadce3),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: const Text('Yes',
                          style: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle submit action
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: const Text('No',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

// ... existing code ...

  void _showDeleteAccountDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 200,
                child: Text(
                  'Please select reason to delete account?',
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 20,
                      fontFamily: "golo",
                      fontWeight: FontWeight.w500),
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.close))
            ],
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                CheckboxListTile(
                  title: const Text(
                    'In Publishing And Graphic Design',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: "golo",
                    ),
                  ),
                  value: false, // Update state as needed
                  onChanged: (bool? value) {
                    // Handle checkbox state
                  },
                ),
                CheckboxListTile(
                  title: const Text(
                    'In Publishing And Graphic Design',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: "golo",
                    ),
                  ),
                  value: false, // Update state as needed
                  onChanged: (bool? value) {
                    // Handle checkbox state
                  },
                ),
                CheckboxListTile(
                  title: const Text(
                    'In Publishing And Graphic Design',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: "golo",
                    ),
                  ),
                  value: false, // Update state as needed
                  onChanged: (bool? value) {
                    // Handle checkbox state
                  },
                ),
                CheckboxListTile(
                  title: const Text(
                    'In Publishing And Graphic Design',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: "golo",
                    ),
                  ),
                  value: false, // Update state as needed
                  onChanged: (bool? value) {
                    // Handle checkbox state
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle submit action
                  Navigator.of(context).pop();
                  _showDeleteAccountDialog2(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "golo",
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

// ... existing code ...

  Widget _buildMenuItem({
    required String title,
    required String image,
    required Color iconColor,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                image,
              ),
            ),
            title: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                fontFamily: "golo",
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: kPrimaryColor,
            ),
            onTap: onTap,
          ),
          const Divider(
            thickness: 0.1,
            color: kPrimaryColor,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/profile_image.jpg'),
                        // You can use NetworkImage if loading from URL
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Rajaha XXXXX',
                            style: TextStyle(
                                fontFamily: "golo",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor),
                          ),
                          Text(
                            '+91 XXXXX XXXXX',
                            style: TextStyle(
                              fontFamily: "golo",
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              _buildMenuItem(
                title: 'Add Bio Data',
                image: "assets/addfile.png",
                iconColor: Colors.blue,
                onTap: () {},
              ),
              _buildMenuItem(
                title: 'About Us',
                image: "assets/info.png",
                iconColor: Colors.blue,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AboutUsScreen()));
                },
              ),
              _buildMenuItem(
                title: 'Contact Us',
                image: 'assets/contactus.png',
                iconColor: Colors.orange,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ContactUsScreen()));
                },
              ),
              _buildMenuItem(
                title: 'Rate Us',
                image: "assets/thumbup.png",
                iconColor: Colors.yellow[700]!,
                onTap: () {},
              ),
              _buildMenuItem(
                title: 'Terms And Conditions',
                image: 'assets/file.png',
                iconColor: Colors.grey,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Termsandcondition()));
                },
              ),
              _buildMenuItem(
                title: 'Privacy Policy',
                image: 'assets/compliant.png',
                iconColor: Colors.green,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Privacypolicy()));
                },
              ),
              _buildMenuItem(
                title: 'Delete Account',
                image: 'assets/trash.png',
                iconColor: Colors.red,
                onTap: () {
                  _showDeleteAccountDialog(context);
                },
              ),
              _buildMenuItem(
                title: 'Logout',
                image: 'assets/logout.png',
                iconColor: Colors.red,
                onTap: () {
                  _showlogoutAccountDialog2(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
