import 'package:calculadora_imc/components/selector_sexe.dart';
import 'package:flutter/material.dart';

class PantallaInici extends StatefulWidget {
  const PantallaInici({super.key});

  @override
  State<PantallaInici> createState() => _PantallaIniciState();
}

class _PantallaIniciState extends State<PantallaInici> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectorSexe(),
      ]
    );
  }
}