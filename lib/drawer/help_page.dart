import 'package:flutter/material.dart';

class helppage extends StatefulWidget {
  @override
  State<helppage> createState() => _helppageState();
}

class _helppageState extends State<helppage> {
  Widget query(String question, String answer) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 120),
                  child: AlertDialog(
                    title: Text(question),
                    content: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Divider(color: Colors.grey),
                          SizedBox(height: 10),
                          Text(
                            answer,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "This app stands for what everyone looking to rent wants to do, cut the broker out of the equation.",
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "It lets you find and rent a house without paying any brokerage.",
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Close",
                          style: TextStyle(
                            color: Color.fromARGB(255, 5, 117, 89),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    question,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        ),
        Divider(color: Colors.grey),
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
          'Help Center',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 7),
            query("How to find owner's contact ?",
                "You can contact the homeowner directly through the app after shortlisting a property."),
            query("How to get location ?",
                "You can find the location of property directly through the app after shortlisting a property."),
            query("How can I change Mobile Number ?",
                "Mobile number change feature is not available currently, We will add these feature soon. "),
            query("What about payment mode ?",
                "You have to pay rent directly to property owner."),
          ],
        ),
      ),
    );
  }
}
