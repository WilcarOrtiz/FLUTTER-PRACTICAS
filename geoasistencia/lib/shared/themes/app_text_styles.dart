import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const title = TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  static const subtitle = TextStyle(fontSize: 18, fontWeight: FontWeight.w500);

  static const body = TextStyle(
    fontSize: 16,
    color: Color.fromARGB(255, 65, 64, 64),
  );

  //tocar poner el estilo de fuente para el titulo, subtitulo y body

  static const button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );
}
