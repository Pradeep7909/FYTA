import 'package:flutter/material.dart';
import 'package:fyta/drawer/drawer_page.dart';
import 'package:fyta/map/map.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawerpage(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black, size: 32),
          title: Center(
            child: Image.asset(
              'assets/logo.png',
              height: 32,
              alignment: Alignment.center,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'notification');
                  },
                  icon: Icon(Icons.notifications),
                  color: Colors.black,
                ),
              ),
            )
          ],
          toolbarHeight: 80,
          backgroundColor: Color.fromARGB(255, 5, 117, 89),
        ),
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 2),
                        child: Container(
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.grey)),
                            child: Material(
                              elevation: 8.0,
                              borderRadius: BorderRadius.circular(15),
                              shadowColor: Color.fromARGB(84, 0, 0, 0),
                              child: TextField(
                                textAlign: TextAlign.start,
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  hintText: "Drop your Location...",
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black54,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 2),
                            child: Text(
                              "Quick way to find rental rooms.",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Container(
                          height: 165,
                          child: MyMap(),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 68, 66, 66),
                            border: Border.all(color: Colors.grey),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'mapappbar');
                        },
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            "Open MAP",
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 35,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 229, 229, 229),
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.bed_outlined),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, 'hostel');
                                      },
                                      child: Text(
                                        'Hostles',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 229, 229, 229),
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.door_back_door_outlined),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, 'rooms');
                                      },
                                      child: Text(
                                        'Rooms',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 229, 229, 229),
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.business_outlined),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, 'flats');
                                      },
                                      child: Text(
                                        'Flats ',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Recommended for you..',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        height: 125,
                        width: 600,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 5),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://res.cloudinary.com/stanza-living/image/upload/f_auto,q_auto,w_600/e_improve/e_sharpen:10/e_saturation:10/v1585233727/Website/CMS-Uploads/kakeqrgcnwtbosudvju7.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 5),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://www.findmydrona.com/uploads/gallery/2431/saraswati-girls-hostel-indore_1579764187.jpeg'),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 5),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://res.cloudinary.com/stanza-living/image/upload/f_auto,q_auto,w_600/e_improve/e_sharpen:10/e_saturation:10/v1580285615/Website/CMS-Uploads/jsqoh0n8nzhhagdsshmf.jpg'),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 9, vertical: 2),
                            child: Text(
                              'krishna hostel',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 9),
                            child: Text(
                              '2Bds',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 9),
                            child: Text(
                              '₹5999/-',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w500),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'mapappbar');
                            },
                            child: Container(
                              height: 20,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 5, 117, 89),
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Direction',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 4)),
                                    Icon(
                                      Icons.directions_rounded,
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextButton(
                              onPressed: () async {
                                final Uri url =
                                    Uri(scheme: 'tel', path: "1234567890");
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                } else {
                                  print('can not launch this url.');
                                }
                              },
                              child: Container(
                                height: 20,
                                width: 98,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 5, 117, 89),
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(16)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 28),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Contact',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 9),
                        child: Text(
                          'Required Person:-2',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 9),
                        child: Text(
                          '1488D scheme72, Indore, MadhyaPradesh',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
