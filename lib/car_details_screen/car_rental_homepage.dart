import 'package:flutter/material.dart';

class CarRentalHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Car Rental"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.notifications))],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchSection(),
            SizedBox(height: 20),
            RecommendedCarSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: SearchField(icon: Icons.location_on, label: "Pick-Up Location")),
              SizedBox(width: 10),
              Expanded(child: SearchField(icon: Icons.location_on_outlined, label: "Drop-Off Location")),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.calendar_today, color: Colors.green),
              SizedBox(width: 10),
              Text("12 December 2024", style: TextStyle(fontSize: 16)),
              Spacer(),
              Switch(value: true, onChanged: (value) {}),
            ],
          ),
          SizedBox(height: 10),
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
    );
  }
}

class SearchField extends StatelessWidget {
  final IconData icon;
  final String label;
  SearchField({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.green),
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}

class RecommendedCarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Recommended Car", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextButton(onPressed: () {}, child: Text("See All")),
          ],
        ),
        SizedBox(height: 10),
        CarCard(),
      ],
    );
  }
}

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
          Text("Nissan Leaf EV", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text("100/day", style: TextStyle(fontSize: 14, color: Colors.green)),
          SizedBox(height: 5),
          Row(
            children: [
              Chip(label: Text("10 Units")),
              SizedBox(width: 5),
              Chip(label: Text("4 Seats")),
              SizedBox(width: 5),
              Chip(label: Text("Hatchback")),
            ],
          ),
        ],
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }
}
