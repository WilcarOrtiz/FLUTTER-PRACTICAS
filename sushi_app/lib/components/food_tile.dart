import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.only(left: 25),
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //img
          Image.asset(food.imagePath, height: 140),
          //Text
          Text(food.name, style: GoogleFonts.dmSerifDisplay(fontSize: 20)),

          SizedBox(
            height: 25,
            child: Row(
              children: [
                // Precio
                Expanded(child: Text('\$${food.price}')),

                // Rating
                Expanded(
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.end, // alinea a la derecha
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      SizedBox(width: 4),
                      Text(food.rating, style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
