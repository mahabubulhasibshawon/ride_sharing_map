import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final IconData icon;
  final String label;
  SearchField({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.green,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.green),
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}