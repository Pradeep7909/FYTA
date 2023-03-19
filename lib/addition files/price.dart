import 'package:flutter/material.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class pricepage extends StatefulWidget {
  const pricepage({super.key});

  @override
  State<pricepage> createState() => _pricepageState();
}

class _pricepageState extends State<pricepage> {
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Price',
              ),
              Icon(Icons.arrow_drop_down_outlined),
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
          child: Text('Low to High'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemTwo,
          child: Text('High to Low'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemThree,
          child: Text('Default'),
        ),
      ],
    );
  }
}
