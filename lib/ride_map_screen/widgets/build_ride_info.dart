import 'package:flutter/material.dart';

Widget BuildRideInfo() {
  return Card(
    color: Colors.white,
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              CircleAvatar(backgroundImage: AssetImage('assets/driver.jpg')),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Budi Susanto",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("Toyota Avanza, Black"),
                  Text("B 1233 YH"),
                ],
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Rating"),
                  Row(
                      children: List.generate(
                          5,
                              (index) => Icon(Icons.star,
                              color: Colors.amber, size: 16))),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Payment"),
                  Text("e-Wallet"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Duration"),
                  Text("30 Minutes"),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Ride Fare: \$14.00"),
              Text("Total: \$4.00"),
            ],
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: "Feedback",
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    ),
  );
}