import 'package:calculadora_imc/components/appbar_scaffolds.dart';
import 'package:calculadora_imc/nucli/app_colors.dart';
import 'package:calculadora_imc/nucli/estils_texts.dart';
import 'package:flutter/material.dart';

class PantallaCalcul extends StatelessWidget {
  final int altura;
  final int pes;

  const PantallaCalcul({super.key, required this.altura, required this.pes});

  @override
  Widget build(BuildContext context) {
    double alturaEnMetres = altura / 100;
    double resultatCalcul = pes / (alturaEnMetres * alturaEnMetres);

    return Scaffold(
      backgroundColor: AppColors.fons,
      appBar: AppbarScaffolds(titol: "Resultat càlcul"),
      body: cosScaffold(resultatCalcul, context),
    );
  }

  Widget cosScaffold(double resultatCalcul, BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.fonsComponent,
                borderRadius: BorderRadius.circular(12),
              ),
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text(
                      "El teu resultat",
                      style: EstilsTexts.textClar.copyWith(fontSize: 32),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            resultatCalcul.toStringAsFixed(2),
                            style: EstilsTexts.textClar.copyWith(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            obtindreTextPerIMC(resultatCalcul),
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              color: obtindreColorPerIMC(resultatCalcul),
                            ),
                          ),
                          // L'idea posar el gràfic/imatge del imc indicant on es localitza el resultat del càlcul sobre aquest, però inclòs amb l'ajuda de l'IA no ho he aconseguit
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          SizedBox(
            height: 64,
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColors.primary),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Finalitzar",
                style: EstilsTexts.textClar.copyWith(fontSize: 32),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color obtindreColorPerIMC(double imc) {
    return switch (imc) {
      < 18.50 => Colors.blue, // Pes baix
      < 24.99 => Colors.green, // Pes normal
      < 29.99 => Colors.yellow, // Sobrepes
      < 34.99 => Colors.orange, // Obesitat lleu
      < 39.99 => Colors.red, // Obesitat mitja
      _ => Colors.purple, // Obesitat mòrbida
    };
  }

  String obtindreTextPerIMC(double imc) {
    return switch (imc) {
      < 18.50 => "Pes baix",
      < 24.99 => "Pes normal",
      < 29.99 => "Sobrepes",
      < 34.99 => "Obesitat lleu",
      < 39.99 => "Obesitat mitja",
      _ => "Obesitat mòrbida",
    };
  }
}
