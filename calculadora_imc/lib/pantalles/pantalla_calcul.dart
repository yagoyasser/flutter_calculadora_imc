import 'package:calculadora_imc/nucli/estils_texts.dart';
import 'package:flutter/material.dart';

class PantallaCalcul extends StatelessWidget {
  final int altura;
  final int pes;

  const PantallaCalcul({
    super.key,
    required this.altura,
    required this.pes,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$altura",
          style: EstilsTexts.textClar,
        ),
      ],
    );
  }
}