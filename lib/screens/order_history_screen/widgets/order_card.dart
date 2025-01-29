import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderCard extends StatelessWidget {
  final Map<String, dynamic> order;

  const OrderCard({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              const Icon(Icons.location_on, color: Colors.blue),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(order["pickup"], style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold)),
                  Text("Pickup point", style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey)),
                ],
              ),
            ]),
            const SizedBox(height: 8),
            Row(children: [
              const Icon(Icons.place, color: Colors.black),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(order["destination"], style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold)),
                  Text("Destination", style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey)),
                ],
              ),
            ]),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildInfoBadge("Payment", order["payment"], Colors.green),
                _buildInfoBadge("Distance", order["distance"], Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoBadge(String title, String value, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey)),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(color: color.withOpacity(0.1), borderRadius: BorderRadius.circular(8)),
          child: Text(value, style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold, color: color)),
        ),
      ],
    );
  }
}
