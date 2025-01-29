import 'package:flutter/material.dart';

import '../ride_map_screen/ride_map_screen.dart';

class RideDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Pickup & Destination
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLocationRow("456 Elm Street, Springfield", "Pickup point"),
                    Divider(),
                    _buildLocationRow("739 Main Street, Springfield", "Destination"),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Distance", style: TextStyle(color: Colors.grey)),
                        Text("12Km", style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Payment", style: TextStyle(color: Colors.grey)),
                        Text("\$12", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16),

            // Ride Details
            Text("DETAILS", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/driver.jpg'),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Budi Susanto", style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("Toyota Avanza, Black", style: TextStyle(color: Colors.grey)),
                            Text("B 1233 YH", style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    _buildDetailRow("Rating", "★★★★★"),
                    _buildDetailRow("Payment Method", "e-Wallet"),
                    _buildDetailRow("Travel Duration", "30 Minutes"),
                    _buildDetailRow("Ride Fare", "\$14.00"),
                    _buildDetailRow("Discount", "--"),
                    _buildDetailRow("Total Fare", "\$4.00"),
                    SizedBox(height: 10),
                    Text("Feedback", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Driver was friendly, and the ride was smooth.",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
            ),

            Spacer(),

            // Re-order Ride Button & Map Icon
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(16),
                    ),
                    child: Text("Re-order Ride", style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: Icon(Icons.map, size: 32, color: Colors.teal),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RideMapScreen()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationRow(String title, String subtitle) {
    return Row(
      children: [
        Icon(Icons.location_on, color: Colors.teal),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(subtitle, style: TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    );
  }

  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(color: Colors.grey)),
          Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
