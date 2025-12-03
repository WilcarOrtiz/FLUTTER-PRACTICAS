import 'package:flutter/material.dart';
import 'shared/themes/app_theme.dart';
import 'shared/widgets/custom_gradient_app_bar.dart'; // 👈 importa el widget

void main() {
  runApp(const GeoAsistenciaApp());
}

class GeoAsistenciaApp extends StatelessWidget {
  const GeoAsistenciaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GeoAsistencia',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const DemoThemeScreen(),
    );
  }
}

class DemoThemeScreen extends StatelessWidget {
  const DemoThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomGradientAppBar(
            height: 180,
            leadingText: 'Grupos',
            center: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  'Bienvenido a GeoAsistencia',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
