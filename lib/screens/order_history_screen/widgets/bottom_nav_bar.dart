import 'package:flutter/material.dart';
import 'package:ride_sharing_app/ride_details_screen/ride_details_screen.dart';

import '../../../ride_map_screen/ride_map_screen.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({Key? key, required this.selectedIndex, required this.onItemTapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      currentIndex: selectedIndex,
      onTap: (index) {
        if (index == 2) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => RideMapScreen()));
        }
        if (index == 3) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => RideDetailsScreen()));
        }
        else {
          onItemTapped(index);
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "Orders"),
        BottomNavigationBarItem(icon: Icon(Icons.map), label: "Map"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Account"),
      ],
    );
  }
}
