import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fyta/bottompage/profile_controller.dart';
import 'package:fyta/drawer/drawer_page.dart';

import 'package:provider/provider.dart';

class MePage extends StatelessWidget {
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
                )),
          )
        ],
        toolbarHeight: 80,
        backgroundColor: Color.fromARGB(255, 5, 117, 89),
      ),
      body: ChangeNotifierProvider(
        create: (_) => profileController(),
        child: Consumer<profileController>(
          builder: (context, provider, child) {
            return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          child: Center(
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(70),
                                    child: provider.image == null
                                        ? //map['profile'].toString()==""? const Icon(Icons.person,size: 35,):
                                        Image(
                                            image: NetworkImage(
                                                'https://media.istockphoto.com/id/158879321/photo/portrait-of-adorable-young-happy-boy.jpg?b=1&s=170667a&w=0&k=20&c=DROPcsHG0gbFDbAA1EmD0ENaT_4nmL_Is_m9H4PA0mQ='),
                                            fit: BoxFit.cover,
                                          )
                                        : Stack(
                                            children: [
                                              Image.file(
                                                  File(provider.image!.path)
                                                      .absolute),
                                            ],
                                          ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    provider.pickImage(context);
                                  },
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundColor:
                                        Color.fromARGB(255, 5, 117, 89),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          'Your Name',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '790****031',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Address',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          child: Column(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Edit Profile',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  )),
                              Divider(
                                color: Colors.black,
                                height: 40,
                                thickness: 2,
                                indent: 5,
                                endIndent: 5,
                              ),
                              TextButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Signing Out"),
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                                "Are you really want to signout"),
                                          ],
                                        ),
                                        actions: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  "No",
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 5, 117, 89),
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.popAndPushNamed(
                                                      context, "phone");
                                                },
                                                child: Text(
                                                  "yes",
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 5, 117, 89),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Text(
                                  'Logout',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ),
                              Divider(
                                color: Colors.black,
                                height: 40,
                                thickness: 2,
                                indent: 5,
                                endIndent: 5,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'sharewith');
                                  },
                                  child: Text(
                                    'Invite Friends',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
