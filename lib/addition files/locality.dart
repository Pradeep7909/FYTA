import 'package:flutter/material.dart';

enum SampleItem { itemOne, itemTwo, itemThree, itemfour, itemfive }

class localitypage extends StatefulWidget {
  const localitypage({super.key});

  @override
  State<localitypage> createState() => _localitypageState();
}

class _localitypageState extends State<localitypage> {
  SampleItem? selectedMenu;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<SampleItem>(
      child: Container(
        height: 35,
        width: 95,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Locality',
              ),
              Icon(Icons.arrow_drop_down_outlined)
            ],
          ),
        ),
      ),
      initialValue: selectedMenu,
      onSelected: (SampleItem item) {
        setState(() {
          selectedMenu = item;
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemOne,
          child: Text('Vijay Nagar'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemTwo,
          child: Text('Bhawarkua'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemThree,
          child: Text('Rajendra Nagar'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemfour,
          child: Text('Khandwa Road'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemfive,
          child: Text('All in Indore'),
        ),
      ],
    );
  }
}
