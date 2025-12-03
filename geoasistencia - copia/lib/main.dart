import 'package:flutter/material.dart';
import 'shared/themes/app_theme.dart';

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
      home: Container(),
    );
  }
}
