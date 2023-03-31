import 'package:flutter/material.dart';
import 'package:profile/screens/gradient_back.dart';
import 'package:profile/screens/header.dart';
import 'package:profile/screens/home_screen_bottom_bar.dart';
import 'package:profile/screens/home_screen_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/screens/search_field.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Header(),
          Padding(
            padding: EdgeInsets.only(top: 250.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  HomeScreenCard(
                    imagePath: 'assets/images/foto1.jpg',
                    title: 'Monserratt Williams',
                    subtitle: 'Views: 250 ',
                    information: 'Visitando Francia',
                  ),
                  const SizedBox(height: 20),
                  HomeScreenCard(
                    imagePath: 'assets/images/foto13.jpg',
                    title: 'Monserratt Williams',
                    subtitle: 'Views:1550',
                    information: 'Pasandola bien con amigos ',
                  ),
                  const SizedBox(height: 20),
                  HomeScreenCard(
                    imagePath: 'assets/images/foto11.jpg',
                    title: 'Monserratt Williams',
                    subtitle: 'Views:550',
                    information: 'Unas vacaciones en Oregon ',
                  ),
                  const SizedBox(height: 20),
                  HomeScreenCard(
                    imagePath: 'assets/images/foto12.jpg',
                    title: 'Monserratt Williams',
                    subtitle: 'Views:220',
                    information: 'Hermoso atardecer',
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: HomeScreenBottomBar(),
    );
  }
}