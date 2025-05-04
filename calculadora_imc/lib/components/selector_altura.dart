import 'package:calculadora_imc/nucli/app_colors.dart';
import 'package:calculadora_imc/nucli/estils_texts.dart';
import 'package:flutter/material.dart';

class SelectorAltura extends StatefulWidget {
  final int altura;
  final Function(int) alCanviarAltura;

  SelectorAltura({
    super.key,
    required this.altura,
    required this.alCanviarAltura,
  });

  @override
  State<SelectorAltura> createState() => _SelectorAlturaState();
}

class _SelectorAlturaState extends State<SelectorAltura> {
  double alturaMin = 125;
  double alturaMax = 225;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.fonsComponent,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    "Altura",
                    style: EstilsTexts.textClar,
                  ),
                  Text(
                    "${widget.altura.toInt()} cm",
                    style: EstilsTexts.textClar.copyWith(
                      fontSize: 32
                    ),
                  ),
                  Slider(
                    value: widget.altura.toDouble(),
                    onChanged: (novaAltura) {
                      widget.alCanviarAltura(novaAltura.toInt());
                    },
                    min: alturaMin,
                    max: alturaMax,
                    divisions: (alturaMax - alturaMin).toInt(),
                    activeColor: AppColors.primary,
                    // label: "${altura.toInt()}" Mostraria, dalt del cursor del Lliscador el valor que té: no cal implementar-ho ja que s'està mostrant a altre lloc
                  )
                ],
              ),
            ),
          )
        ),
      ],
    );
  }
}