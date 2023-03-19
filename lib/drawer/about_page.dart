import 'package:flutter/material.dart';

class Aboutpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 117, 89),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        title: Text(
          'About',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 5),
                      child: Column(
                        children: [
                          Text(
                            "Welcome to our room and hostel rental application! We are dedicated to making the process of finding and renting out rooms and hostels as easy and secure as possible. Our platform is designed to connect travelers with affordable and comfortable lodging options, while also providing hosts with a safe and reliable way to earn income by renting out their unused rooms.\n\n\t\t\tWith our user-friendly interface, renters can easily search for available rooms and hostels in their desired location, filter by amenities and price, and book directly through the platform. Meanwhile, hosts can list their properties, set their own prices, and communicate with potential renters through our secure messaging system.\n\n\t\t\t Our mission is to provide a one-stop-shop for all your room and hostel rental needs. We believe that everyone deserves access to safe and affordable lodging options, whether they are traveling for business or pleasure. With our platform, renters can enjoy peace of mind knowing that they are booking through a trusted source, while hosts can maximize their earning potential without worrying about the risks of renting out their properties.\n\t\t\t",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          Text(
                            'We talked a lot of people and they faced problems in taking finding the room.The global online clothing rental market size to be valued at USD 2.09 billion by 2025 and is expected to grow at a compound annual growth rate (CAGR) of 9.4% during the forecast period. Increasing online retail is the primary driving factor for this growth.\n\n  \t\t\t\t This is a big problem that common people does not get the house to live easily in such a big place, then to solve that big problem this application is very easy.In this application we will provide two view, one for owner and one for tenant. The owner can upload photos and videos of their room/PG/Hostel on this application, the tenant can see those photos and select better room for himself.\n\n  \t\t\t\t In this project we have used Flutter, Figma, Firebase, VS code and android studio.For the work of front-end and backend we had use the Flutter and for the database we have used Firebase. VS code and the android studio are the compilers and for the user Interface we have used Figma.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
