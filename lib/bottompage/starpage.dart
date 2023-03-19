import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StarPage extends StatefulWidget {
  @override
  State<StarPage> createState() => _StarPageState();
}

class _StarPageState extends State<StarPage> {
  Widget singlehostel(String flatname, String amount, String Address,
      String bds, String image1, String image2, String image3) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 125,
            width: 600,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
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
                              image: NetworkImage(image1), fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
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
                                image: NetworkImage(image2),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
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
                                image: NetworkImage(image3),
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
                padding: EdgeInsets.symmetric(horizontal: 9, vertical: 2),
                child: Text(
                  flatname,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
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
                  bds + "Bds",
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 9),
                child: Text(
                  '₹' + amount + '/-',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'mapappbar');
                },
                child: Container(
                  height: 20,
                  width: 98,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 5, 117, 89),
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Direction',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4)),
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
                    final Uri url = Uri(scheme: 'tel', path: "1234567890");
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
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Contact',
                            style: TextStyle(fontSize: 10, color: Colors.white),
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
            padding: EdgeInsets.symmetric(horizontal: 9, vertical: 2),
            child: Text(
              Address,
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
          ),
          Divider(color: Colors.grey),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  "Your Favourite Places",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Divider(color: Colors.grey),
                SizedBox(height: 10),
                singlehostel(
                  "Annapurna Hostel",
                  "4999",
                  '1356B scheme71, Indore, MadhyaPradesh',
                  "3",
                  'https://5.imimg.com/data5/RY/BK/HN/SELLER-92580948/hostel-500x500.jpg',
                  'https://is1-3.housingcdn.com/01c16c28/40036ef171b6e473c43699ea825cdc9e/v0/fs/3_rk_-for-rent-scheme_no_114-Indore-triple_sharing_room.jpg',
                  'https://5.imimg.com/data5/RY/BK/HN/SELLER-92580948/hostel-500x500.jpg',
                ),
                singlehostel(
                  "Madhav Hostel",
                  "3999",
                  "167 scheme92, Indore, MadhyaPradesh",
                  "2",
                  'https://res.cloudinary.com/stanza-living/image/upload/f_auto,q_auto,w_600/e_improve/e_sharpen:10/e_saturation:10/f_auto,q_auto/v1655460718/Website/CMS-Uploads/oaikzgjrommpxcssr9rl.jpg',
                  'https://res.cloudinary.com/stanza-living/image/upload/f_auto,q_auto,w_600/e_improve/e_sharpen:10/e_saturation:10/f_auto,q_auto/v1615447379/Website/CMS-Uploads/ytdksgnkqmbyamh27cyv.jpg',
                  'https://res.cloudinary.com/stanza-living/image/upload/f_auto,q_auto,w_600/e_improve/e_sharpen:10/e_saturation:10/f_auto,q_auto/v1655460998/Website/CMS-Uploads/yytc0qdmwv25z1ucsdoz.jpg',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
