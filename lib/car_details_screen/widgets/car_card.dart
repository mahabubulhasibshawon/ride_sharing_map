import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://imgd.aeplcdn.com/370x208/n/cw/ec/170173/dzire-2024-exterior-right-front-three-quarter-3.jpeg?isig=0&q=80',
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(8)),
                  child: Text("Last Unit", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Nissan Leaf EV", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Row(
              children: [
                Text("\$1000", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                Text("/day", style: TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
          ],),
          SizedBox(height: 5),
          Row(
            children: [
              Chip(backgroundColor: Colors.white,label: Text("10 Units")),
              SizedBox(width: 5),
              Chip(backgroundColor: Colors.white,label: Text("4 Seats")),
              SizedBox(width: 5),
              Chip(backgroundColor: Colors.white,label: Text("Hatchback")),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Chip(backgroundColor: Colors.white,label: Text("10 Units")),
              SizedBox(width: 5),
              Chip(backgroundColor: Colors.white,label: Text("Hatchback")),
              SizedBox(width: 5),
              Chip(backgroundColor: Colors.white,label: Text("4 Seats")),
              Chip(backgroundColor: Colors.white,label: Text("4 Seats")),

            ],
          ),
        ],
      ),
    );
  }
}