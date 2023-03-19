import 'package:flutter/material.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class sortpage extends StatefulWidget {
  const sortpage({super.key});

  @override
  State<sortpage> createState() => _sortpageState();
}

class _sortpageState extends State<sortpage> {
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
                'Sorts',
              ),
              Icon(Icons.sort_rounded)
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
          child: Text('Popularity'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemTwo,
          child: Text('Nearest'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemThree,
          child: Text('Default Sort'),
        ),
      ],
    );
  }
}
