import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 5, 117, 89),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Row(
              children: const [
                Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 5, 117, 89),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Account",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
            const Divider(
              height: 15,
              thickness: 2,
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            buildAccountOptionRow(context, "Change Mobile Number",
                "Mobile number change feature is not available currently"),
            buildAccountOptionRow(context, "Font", "Fixed Font"),
            buildAccountOptionRow(context, "Theme", "Dark Mode \n\nLight Mode"),
            buildAccountOptionRow(context, "Language", "English\nOther"),
            buildAccountOptionRow(
                context, "Privacy and security", "Your data is secured."),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Icon(
                  Icons.volume_up_outlined,
                  color: Color.fromARGB(255, 5, 117, 89),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Notifications",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
            const Divider(height: 15, thickness: 2, color: Colors.black),
            const SizedBox(
              height: 10,
            ),
            buildNotificationOptionRow(
              "New for you",
            ),
            buildNotificationOptionRow(
              "Account activity",
            ),
            buildNotificationOptionRow(
              "Opportunity",
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Signing Out"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text("Are you really want to signout"),
                          ],
                        ),
                        actions: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text(
                                  "No",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 5, 117, 89),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.popAndPushNamed(context, "phone");
                                },
                                child: const Text(
                                  "yes",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 5, 117, 89),
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
                child: const Text("SIGN OUT",
                    style: TextStyle(
                        fontSize: 16, letterSpacing: 2.2, color: Colors.black)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column buildNotificationOptionRow(String title) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600]),
            ),
            Transform.scale(
              scale: 0.7,
              child: CupertinoSwitch(
                value: true,
                onChanged: (bool val) {},
              ),
            ),
          ],
        ),
        const Divider(thickness: 1, color: Colors.grey),
      ],
    );
  }

  GestureDetector buildAccountOptionRow(
      BuildContext context, String title, String dailogbox) {
    return GestureDetector(
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(title),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(dailogbox),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "Close",
                          style: TextStyle(
                            color: Color.fromARGB(255, 5, 117, 89),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const Divider(thickness: 1, color: Colors.grey),
        ],
      ),
    );
  }
}
