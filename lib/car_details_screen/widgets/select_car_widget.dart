import 'package:flutter/material.dart';
import 'package:ride_sharing_app/car_details_screen/widgets/transparent_btn_widget.dart';

import 'search_field.dart';

class SelectCarWidget extends StatelessWidget {
  const SelectCarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      height: height * .4,
      width:  double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          spacing: 10,
          children: [
            ListTile(
              title: Text('Search For a Car', style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Find your favourite car to rent',
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 10,
              children: [
                Expanded(child: SearchField(icon: Icons.location_on, label: "Pick-Up Location")),
                SizedBox(width: 10),
                Expanded(child: SearchField(icon: Icons.location_on_outlined, label: "Drop-Off Location")),

                // TransparentBtnWidget(icon: Icon(Icons.add_location_outlined), text: 'Pick-up Location', width: width,),
                // TransparentBtnWidget(icon: Icon(Icons.add_location_outlined), text: 'Pick-up Location', width: width,),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 45,
              width: width ?? double.infinity, // Use provided width or expand
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.calendar_today, color: Colors.green),
                  SizedBox(width: 10),
                  Text("12 December 2024", style: TextStyle(fontSize: 16)),
                  Spacer(),
                  Transform.scale(
                    scale: 0.8, // Adjust the scale factor as needed
                    child: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Colors.green,
                    ),
                  )

                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Same as Pick-up Location', style: TextStyle(color: Colors.grey),),
              Text('Change',style: TextStyle(color: Colors.green),),
            ],),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {},
              child: Text("Search", style: TextStyle(fontSize: 18, color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
