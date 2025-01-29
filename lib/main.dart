import 'package:flutter/material.dart';
import 'package:ride_sharing_app/ride_details_screen/ride_details_screen.dart';
import 'package:ride_sharing_app/ride_map_screen/ride_map_screen.dart';

import 'screens/order_history_screen/order_history_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: OrderHistoryScreen(),
    );
  }
}
