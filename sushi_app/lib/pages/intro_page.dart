import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(186, 230, 57, 45),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 25),
            Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/maquina.png', height: 250),
            ),
            SizedBox(height: 20),
            Text(
              "EL SABOR DE LA COMIDA JAPONESA",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Siente el sabor de la comida japonesa más popular desde cualquier lugar y en cualquier momento.",
              style: TextStyle(color: Colors.grey[200], height: 2),
            ),
            SizedBox(height: 25),
            MyButton(
              text: "Iniciemos",
              onTap: () {
                Navigator.pushNamed(context, "/menuPage");
              },
            ),
          ],
        ),
      ),
    );
  }
}
