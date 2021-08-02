import 'package:flutter/material.dart';

class CatagorySelector extends StatefulWidget {
  const CatagorySelector({Key? key}) : super(key: key);

  @override
  _CatagorySelectorState createState() => _CatagorySelectorState();
}

class _CatagorySelectorState extends State<CatagorySelector> {
  int selected_index = 0;
  final List<String> catagory = [
    'Messages',
    'Online',
    'Groups',
    'Requests',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catagory.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selected_index = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30.0,
              ),
              child: Text(
                catagory[index],
                style: TextStyle(
                  color:
                      index == selected_index ? Colors.white : Colors.white60,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.4,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
