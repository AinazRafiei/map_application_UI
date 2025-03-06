import 'package:flutter/material.dart';
import 'package:googlemap/constants/var_constant.dart';

import 'screens/contribute_screen.dart';
import 'screens/explore_screen.dart';
import 'screens/you_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyWidget(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int selectedIndex = 0; // Track selected tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodies[selectedIndex],

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        selectedItemColor: const Color.fromARGB(255, 86, 166, 150),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.location_pin),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'You',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Contribute',
          ),
        ],
      ),
    );
  }
}
