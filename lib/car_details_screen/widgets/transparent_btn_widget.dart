import 'package:flutter/material.dart';

class TransparentBtnWidget extends StatelessWidget {
  final Icon icon;
  final String text;
  final double? width; // Nullable to allow flexibility
  const TransparentBtnWidget({
    super.key,
    required this.icon,
    required this.text,
    this.width, // Default width removed for more flexibility
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 40,
        width: width ?? double.infinity, // Use provided width or expand
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min, // Adjusts to content
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 5), // Adds spacing
            Text(text),
          ],
        ),
      ),
    );
  }
}
