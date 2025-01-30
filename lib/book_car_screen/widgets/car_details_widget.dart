import 'package:flutter/material.dart';

class CarDetailsWidget extends StatelessWidget {
  const CarDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      height:  height * .37,
      width:  double.maxFinite,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Brand', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                Text('Suzuki Mobile', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14, color: Colors.grey),),
                SizedBox(height: 30),
                Text('Model', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                Text('Dzire 2025', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14, color: Colors.grey),),
                SizedBox(height: 30),
                Text('Year', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                Text('2024 - 2025', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14, color: Colors.grey),),
                SizedBox(height: 30),
                Text('Price', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                Text('\$120/day', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14, color: Colors.grey),),
              ],
            ),
          ),
          Expanded(child: Image.network('https://ik.imagekit.io/girnar/sayaratbay/large/gallery/color/39/2180/suzuki-dzire-2025-color-861068.jpg'))
        ],
      ),
    );
  }
}
