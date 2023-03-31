import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/screens/row.dart';

class GardientBack extends StatelessWidget {
  final String title;
  const GardientBack({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 116, 4, 56),
            Color.fromARGB(255, 153, 8, 88)
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp,
        ),
      ),
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Text(
              title,
              style: GoogleFonts.lobsterTwo(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20.0), // Espacio entre el título y la imagen de perfil
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/user_image2.jpg'),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    SearchField(),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 60,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 4),
                                Text(
                                  'Monserrat Williams',
                                  style: GoogleFonts.roboto(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  '2437 seguidores',
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              //   Iconos(), 
                              //    const Icon(Icons.favorite, color: Colors.white),
  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Icon(Icons.favorite, color: Colors.white)),
          Expanded(child: Icon(Icons.add, color: Colors.white)),
          Expanded(child: Icon(Icons.access_alarm, color: Colors.white)),
        ],
      ),                    
                              ],
                            ),
                          ),
                        ],
                      ),
                      
                    ),

                  ],
                ),
              ),
            ],
          ),
     
        
        ],
      ),
      
    );
    
  }
}

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Buscar',
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(Icons.search),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Icons.mic),
        ),
      ),
    );
  }
}