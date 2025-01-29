import 'package:flutter/material.dart';
import 'widgets/order_card.dart';
import 'widgets/section_title.dart';
import 'widgets/bottom_nav_bar.dart';

class OrderHistoryScreen extends StatefulWidget {
  @override
  _OrderHistoryScreenState createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  int _selectedIndex = 1;

  final List<Map<String, dynamic>> activeOrders = [
    {"pickup": "456 Elm Street, Springfield", "destination": "739 Main Street, Springfield", "payment": "\$12", "distance": "12Km"},
  ];

  final List<Map<String, dynamic>> pastOrders = [
    {"pickup": "456 Elm Street, Springfield", "destination": "739 Main Street, Springfield", "payment": "\$12", "distance": "12Km"},
    {"pickup": "456 Elm Street, Springfield", "destination": "739 Main Street, Springfield", "payment": "\$12", "distance": "12Km"},
    {"pickup": "456 Elm Street, Springfield", "destination": "739 Main Street, Springfield", "payment": "\$12", "distance": "12Km"},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SectionTitle(title: "Order History", subtitle: "Showing all your order history"),
                const SizedBox(height: 16),
                const SectionTitle(title: "Active Orders"),
                _buildOrderList(activeOrders),
                const SizedBox(height: 16),
                const SectionTitle(title: "Past Orders"),
                _buildOrderList(pastOrders),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOrderList(List<Map<String, dynamic>> orders) {
    return Column(
      children: orders.map((order) => OrderCard(order: order)).toList(),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import '../../ride_map_screen.dart'; // Import the map screen
//
// class OrderHistoryScreen extends StatefulWidget {
//   @override
//   _OrderHistoryScreenState createState() => _OrderHistoryScreenState();
// }
//
// class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
//   int _selectedIndex = 1; // Default selected tab (Orders)
//
//   void _onItemTapped(int index) {
//     if (index == 2) { // Navigate to Map when "Map" is clicked
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => RideMapScreen()),
//       );
//     } else {
//       setState(() {
//         _selectedIndex = index;
//       });
//     }
//   }
//
//   final List<Map<String, dynamic>> activeOrders = [
//     {"pickup": "456 Elm Street, Springfield", "destination": "739 Main Street, Springfield", "payment": "\$12", "distance": "12Km"},
//   ];
//
//   final List<Map<String, dynamic>> pastOrders = [
//     {"pickup": "456 Elm Street, Springfield", "destination": "739 Main Street, Springfield", "payment": "\$12", "distance": "12Km"},
//     {"pickup": "456 Elm Street, Springfield", "destination": "739 Main Street, Springfield", "payment": "\$12", "distance": "12Km"},
//     {"pickup": "456 Elm Street, Springfield", "destination": "739 Main Street, Springfield", "payment": "\$12", "distance": "12Km"},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: _buildBottomNavigationBar(),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildHeader(),
//               const SizedBox(height: 16),
//               Text("Active orders", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)),
//               _buildOrderList(activeOrders),
//               const SizedBox(height: 16),
//               Text("Past orders", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)),
//               _buildOrderList(pastOrders),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildHeader() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Order History", style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.bold)),
//             Text("Showing all your order history", style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey)),
//           ],
//         ),
//         Icon(Icons.notifications, color: Colors.red, size: 28),
//       ],
//     );
//   }
//
//   Widget _buildOrderList(List<Map<String, dynamic>> orders) {
//     return Column(
//       children: orders.map((order) => _buildOrderCard(order)).toList(),
//     );
//   }
//
//   Widget _buildOrderCard(Map<String, dynamic> order) {
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       elevation: 2,
//       child: Padding(
//         padding: const EdgeInsets.all(12),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(children: [
//               Icon(Icons.location_on, color: Colors.blue),
//               const SizedBox(width: 8),
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//                 Text(order["pickup"], style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold)),
//                 Text("Pickup point", style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey)),
//               ]),
//             ]),
//             const SizedBox(height: 8),
//             Row(children: [
//               Icon(Icons.place, color: Colors.black),
//               const SizedBox(width: 8),
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//                 Text(order["destination"], style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold)),
//                 Text("Destination", style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey)),
//               ]),
//             ]),
//             const SizedBox(height: 12),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 _buildInfoBadge("Payment", order["payment"], Colors.green),
//                 _buildInfoBadge("Distance", order["distance"], Colors.blue),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildInfoBadge(String title, String value, Color color) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(title, style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey)),
//         Container(
//           padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//           decoration: BoxDecoration(color: color.withOpacity(0.1), borderRadius: BorderRadius.circular(8)),
//           child: Text(value, style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold, color: color)),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildBottomNavigationBar() {
//     return BottomNavigationBar(
//       selectedItemColor: Colors.blue,
//       unselectedItemColor: Colors.grey,
//       currentIndex: _selectedIndex,
//       onTap: _onItemTapped,
//       items: const [
//         BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//         BottomNavigationBarItem(icon: Icon(Icons.list), label: "Orders"),
//         BottomNavigationBarItem(icon: Icon(Icons.map), label: "Map"),
//         BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Account"),
//       ],
//     );
//   }
// }
