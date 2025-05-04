import 'package:flutter/material.dart';

class EstilsTexts {
  // No es poden emprar els color personalitzats de app_colors.dart perquè, després, a l'emprar aquesta variable a selector_sexe, dóna error perquè prové d'una classe externa:
  // per dir-ho d'altra forma, perquè provendria d'una classe que prové d'altra classe, al que Dart no és capaç de determinar que siga un TextStyle en temps de compilació
  // Revisar nota
  
  static const TextStyle textClar = TextStyle(
    color: Colors.white,
    fontSize: 16,
  );

  static const TextStyle textFosc = TextStyle(
    color: Colors.black,
    fontSize: 16,
  );
}