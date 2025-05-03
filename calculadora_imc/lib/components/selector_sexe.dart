import 'package:calculadora_imc/nucli/app_colors.dart';
import 'package:calculadora_imc/nucli/paddings.dart';
import 'package:calculadora_imc/nucli/estils_texts.dart';
import 'package:flutter/material.dart';

class SelectorSexe extends StatefulWidget {
  const SelectorSexe({super.key});

  @override
  State<SelectorSexe> createState() => _SelectorSexeState();
}

class _SelectorSexeState extends State<SelectorSexe> {
  String? sexeSeleccionat;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (sexeSeleccionat == "Mascle") {
                  sexeSeleccionat = null;
                } else {
                  sexeSeleccionat = "Mascle";
                }
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: sexeSeleccionat == "Mascle"
                  ? AppColors.fonsComponentSeleccionat
                  : AppColors.fonsComponent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                // L'ideal seria obtindre la mida més gran entre l'alt i l'ample, sumar-li els padding i aplicar eixa nova mida al valor més menut d'entre l'alt i l'ample
                // En aquest cas, com es pot establir les mides de les imatges, paddings i texts, no és estrictament necessari fer-ho així
                // A més, com en aquest cas s'implementa Expanded, dona igual ja que Expanded té una mida major que la del Padding
                padding: EdgeInsets.only(left: Paddings.paddingGran, top: Paddings.paddingPetit, right: Paddings.paddingGran),
                child: Column(
                  children: [
                    Image.asset(
                      "imatges/mascle.png",
                      height: 100,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: Paddings.paddingPetit),
                      child: Text(
                        "Mascle",
                        style: EstilsTexts.textClar,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (sexeSeleccionat == "Femella") {
                  sexeSeleccionat = null;
                } else {
                  sexeSeleccionat = "Femella";
                }
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: sexeSeleccionat == "Femella"
                  ? AppColors.fonsComponentSeleccionat
                  : AppColors.fonsComponent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                // L'ideal seria obtindre la mida més gran entre l'alt i l'ample, sumar-li els padding i aplicar eixa nova mida al valor més menut d'entre l'alt i l'ample
                // En aquest cas, com es pot establir les mides de les imatges, paddings i texts, no és estrictament necessari fer-ho així
                // A més, com en aquest cas s'implementa Expanded, dona igual ja que Expanded té una mida major que la del Padding
                padding: EdgeInsets.only(left: Paddings.paddingGran, top: Paddings.paddingPetit, right: Paddings.paddingGran),
                child: Column(
                  children: [
                    Image.asset(
                      "imatges/femella.png",
                      height: 100,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: Paddings.paddingPetit),
                      child: Text(
                        "Femella",
                        style: EstilsTexts.textClar,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}