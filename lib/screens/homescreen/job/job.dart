import 'package:flutter/material.dart';
import 'package:my_app/screens/homescreen/bussiness/bussinessdetails.dart';
import 'package:my_app/constants.dart';

class Job extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Jobscreen(),
    );
  }
}

class Jobscreen extends StatelessWidget {
  final List<Restaurant> restaurants = [
    Restaurant(
      name: "Decked Up By Garden Cafe",
      location: "Vaishali Nagar, Jaipur",
      hours: "10:00 PM To 10:10 AM",
    ),
    // Add more restaurants as needed
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
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.pop(context),
                color: kPrimaryColor,
              ),
              const Text(
                'Job',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontFamily: "golo",
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        body: Center(child: Image.asset("assets/jobs.png")));
  }
}

class Restaurant {
  final String name;
  final String location;
  final String hours;

  Restaurant({required this.name, required this.location, required this.hours});
}

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;

  RestaurantCard({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => RestaurantDetailScreen()));
      },
      child: Card(
        margin: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(12), // Adjust the radius as needed
                ),
                child: Image.asset(
                  "assets/resturant.png",
                  width: 96,
                  height: 136,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(restaurant.name,
                        style: const TextStyle(
                            fontFamily: "golo",
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_pin,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(restaurant.location,
                          style: const TextStyle(
                              fontFamily: "golo",
                              fontSize: 12,
                              color: grey1,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(
                        Icons.access_time,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(restaurant.hours,
                          style: const TextStyle(
                              fontFamily: "golo",
                              fontSize: 12,
                              color: grey1,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 30,
                          width: 100,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.call,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Call Now",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 30,
                          width: 100,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.black)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/whatsapp.png"),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  "Call Now",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        height: 36,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.blue,
                              ),
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.download,
                                  color: Colors.blue,
                                ))),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}