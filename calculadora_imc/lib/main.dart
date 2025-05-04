import 'package:calculadora_imc/components/appbar_scaffolds.dart';
import 'package:calculadora_imc/nucli/app_colors.dart';
import 'package:calculadora_imc/pantalles/pantalla_inici.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.fons,
        appBar: AppbarScaffolds(titol: "Calculadora IMC"),
        body: PantallaInici(),
      ),
    );
  }
}
