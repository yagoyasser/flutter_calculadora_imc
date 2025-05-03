import 'package:calculadora_imc/nucli/app_colors.dart';
import 'package:calculadora_imc/nucli/estils_texts.dart';
import 'package:calculadora_imc/nucli/paddings.dart';
import 'package:flutter/material.dart';

class SelectorAltura extends StatefulWidget {
  const SelectorAltura({super.key});

  @override
  State<SelectorAltura> createState() => _SelectorAlturaState();
}

class _SelectorAlturaState extends State<SelectorAltura> {
  double altura = 175;
  double alturaMin = 125;
  double alturaMax = 225;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: Paddings.paddingGran, top: Paddings.paddingPetit, right: Paddings.paddingGran, bottom: Paddings.paddingPetit),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.fonsComponent,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text(
                      "Altura",
                      style: EstilsTexts.textClar,
                    ),
                    Text(
                      "${altura.toInt()} cm",
                      style: EstilsTexts.textClarGran,
                    ),
                    Slider(
                      value: altura,
                      onChanged: (valor) {
                        setState(() {
                          altura = valor;
                        });
                      },
                      min: alturaMin,
                      max: alturaMax,
                      divisions: (alturaMax - alturaMin).toInt(),
                      activeColor: AppColors.primary,
                      // label: "${altura.toInt()}"
                    )
                  ],
                ),
              ),
            ),
          )
        ),
      ],
    );
  }
}