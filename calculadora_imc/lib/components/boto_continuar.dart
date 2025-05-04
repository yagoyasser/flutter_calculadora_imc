import 'package:calculadora_imc/nucli/app_colors.dart';
import 'package:calculadora_imc/nucli/estils_texts.dart';
import 'package:calculadora_imc/pantalles/pantalla_calcul.dart';
import 'package:flutter/material.dart';

class BotoContinuar extends StatefulWidget {
  final int altura;
  final int pes;

  const BotoContinuar({
    super.key,
    required this.altura,
    required this.pes,
  });

  @override
  State<BotoContinuar> createState() => _BotoContinuarState();
}

class _BotoContinuarState extends State<BotoContinuar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: SizedBox(
        height: 64,
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(AppColors.primary),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PantallaCalcul(altura: widget.altura, pes: widget.pes)
              )
            );
          },
          child: Text(
            "Continuar", 
            style: EstilsTexts.textClar.copyWith(
              fontSize: 32
            ),
          )
        ),
      ),
    );
  }
}