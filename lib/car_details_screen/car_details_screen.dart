import 'package:flutter/material.dart';
import 'package:ride_sharing_app/book_car_screen/book_car_screen.dart';
import 'package:ride_sharing_app/car_details_screen/widgets/select_car_widget.dart';

import 'widgets/car_card.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green.withOpacity(.1),
        title: Container(decoration: BoxDecoration(border: Border.all(),shape: BoxShape.circle),child: IconButton(onPressed: () {}, icon: Icon(Icons.map, size: 18,)),),
        actions: [
          Container(decoration: BoxDecoration(border: Border.all(),shape: BoxShape.circle),child: IconButton(onPressed: () {}, icon: Icon(Icons.notifications_active_outlined, size: 18,)),),
          SizedBox(width: 10,),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            children: [
              SelectCarWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recommended Car', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  Text('Select All',style: TextStyle(color: Colors.green),),
                ],),
              CarCard()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => BookCarScreen()));
          }
        },
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.directions_car_filled), label: "Car"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
