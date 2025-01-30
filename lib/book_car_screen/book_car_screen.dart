import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ride_sharing_app/book_car_screen/app_colors.dart';
import 'package:ride_sharing_app/book_car_screen/widgets/car_details_widget.dart';
import 'package:ride_sharing_app/book_car_screen/widgets/car_spec_widget.dart';

class BookCarScreen extends StatelessWidget {
  const BookCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // title: Container(decoration: BoxDecoration(border: Border.all(),shape: BoxShape.circle),child: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios, size: 18,)),),
        actions: [
          // Container(decoration: BoxDecoration(border: Border.all(),shape: BoxShape.circle),child: IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz, size: 18,)),),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz, size: 18,)),
          SizedBox(width: 10,),
        ],
      ),
      body: Column(
        children: [
          CarDetailsWidget(),
          Container(
            height:  height * .1,
            width:  double.maxFinite,
            color: Color(0xffe4f8e4),
            child: Row(
              children: [
                Container(margin : EdgeInsets.symmetric(horizontal: 20), height: 10,width: 10, decoration: BoxDecoration(shape: BoxShape.circle , color: AppColors.primaryColor),),
                Text('Before use the rental car. Please always check the condition \nfirset before using it')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Car Specifications', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                Text('Details' , style: TextStyle(color: AppColors.primaryColor, fontSize: 14, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          CarSpecWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Car Specifications', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                Text('Details' , style: TextStyle(color: AppColors.primaryColor, fontSize: 14, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height:  height * .4,
              width:  double.maxFinite,
              child: Column(
                children: [
                  Card(
                    color : Colors.white,
                    elevation: 3,
                    child: ListTile(
                      leading: Icon(CupertinoIcons.creditcard_fill, color: AppColors.primaryColor,),
                      title: Text('Hourly Plan', style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('\$10 / Hrs'),
                      trailing: Icon(Icons.add, color: Colors.grey,),
                    ),
                  ),
                  Card(
                    color : Colors.white,
                    elevation: 3,
                    child: ListTile(
                      leading: Icon(CupertinoIcons.creditcard_fill, color: AppColors.primaryColor,),
                      title: Text('Daily Plan', style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('\$100 / Day'),
                      trailing: Icon(Icons.add, color: Colors.grey,),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 40,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(child: Text('Bood Now', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
