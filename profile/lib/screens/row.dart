  
import 'package:flutter/material.dart';

class Iconos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}