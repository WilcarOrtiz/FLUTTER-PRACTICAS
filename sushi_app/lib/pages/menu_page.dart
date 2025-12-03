import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/components/food_tile.dart';
import 'package:sushi_app/models/food.dart';
import 'package:sushi_app/themes/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  //Food Menu

  List foodMenu = [
    Food(
      name: 'Sushi de Salmón',
      price: '9.50',
      imagePath: 'lib/images/menu/salmon_sushi.png',
      rating: '4.8',
    ),
    Food(
      name: 'Nigiri de Atún',
      price: '8.00',
      imagePath: 'lib/images/menu/tuna_nigiri.png',
      rating: '4.6',
    ),
    Food(
      name: 'Roll California',
      price: '7.50',
      imagePath: 'lib/images/menu/california_roll.png',
      rating: '4.5',
    ),
    Food(
      name: 'Sashimi Variado',
      price: '12.00',
      imagePath: 'lib/images/menu/sashimi.png',
      rating: '4.9',
    ),

    Food(
      name: 'Ramen Japonés',
      price: '10.00',
      imagePath: 'lib/images/menu/ramen.png',
      rating: '4.7',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.grey[900]),
        title: Text('Tokio', style: TextStyle(color: Colors.grey[900])),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //banner de promo
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Espacio para texto y botón, sin deformar el botón
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Solo el texto se adapta
                      Text(
                        "Obten un 32% en descuento",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 20),

                      MyButton(text: "Redimir", onTap: () {}),
                    ],
                  ),
                ),

                const SizedBox(width: 10),

                SizedBox(
                  width: 100,
                  child: Image.asset('lib/images/sushi (1).png', height: 100),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),
          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),

          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Menu de comida",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(height: 10),

          //Popular Food
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),

              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodMenu.length,
                  itemBuilder:
                      (context, index) => FoodTile(food: foodMenu[index]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
