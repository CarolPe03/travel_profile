import 'package:flutter/material.dart';
import 'package:profile/screens/gradient_back.dart';

class HomeScreenAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.purple, // Establece el color de fondo del Container como morado
          ),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Perfillll',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
            ],
            elevation: 0, // Elimina la sombra del BottomNavigationBar
          ),
        ),
      ],
    );
  }
}
