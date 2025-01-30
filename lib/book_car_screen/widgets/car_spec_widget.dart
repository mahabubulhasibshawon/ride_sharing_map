import 'package:flutter/material.dart';
import 'package:ride_sharing_app/book_car_screen/app_colors.dart';

class CarSpecWidget extends StatelessWidget {
  const CarSpecWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      height:  height * .1,
      width:  double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.stacked_bar_chart_sharp, color: AppColors.primaryColor,),
              Text('Price', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
              Text('\$120/day', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14, color: Colors.grey),),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.car_rental, color: AppColors.primaryColor,),
              Text('Capacity', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
              Text('4 Passenger Seat', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14, color: Colors.grey),),
            ],
          ),
        ],
      ),
    );
  }
}
