import 'package:flutter/material.dart';

class contactpage extends StatelessWidget {
  Widget self(String image, String name, String enroll, String year) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.grey,
                  child: Image.asset(image),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        enroll,
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        year,
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Divider(
            color: Colors.grey,
            thickness: 2,
            height: 2,
          ),
        )
      ],
    );
  }

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
          'Contact Us',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/logo.png',
            height: 40,
            alignment: Alignment.center,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Made by us.",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          self(
            "assets/ankit.jpeg",
            "Ankit Sharma",
            "0832IT201008",
            "3rd Year IT",
          ),
          self(
            "assets/kshitij.jpeg",
            "Kshitij Surana",
            "0832IT201032",
            "3rd Year IT",
          ),
          self(
            "assets/pradeep.jpeg",
            "Pradeep Rathore",
            "0832IT201042",
            "3rd Year IT",
          ),
          self(
            "assets/prashant.jpeg",
            "Prashant",
            "0832IT201044",
            "3rd Year IT",
          )
        ],
      ),
    );
  }
}
