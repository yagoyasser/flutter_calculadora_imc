import 'package:calculadora_imc/nucli/app_colors.dart';
import 'package:calculadora_imc/nucli/estils_texts.dart';
import 'package:flutter/material.dart';

class BotoContinuar extends StatefulWidget {
  const BotoContinuar({super.key});

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
      
          },
          child: Text(
            "Continuar", 
            style: EstilsTexts.textClarGran,
          )
        ),
      ),
    );
  }
}