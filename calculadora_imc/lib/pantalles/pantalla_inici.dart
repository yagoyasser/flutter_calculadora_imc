import 'package:calculadora_imc/components/boto_continuar.dart';
import 'package:calculadora_imc/components/selector_altura.dart';
import 'package:calculadora_imc/components/selector_numero.dart';
import 'package:calculadora_imc/components/selector_sexe.dart';
import 'package:flutter/material.dart';

class PantallaInici extends StatefulWidget {
  const PantallaInici({super.key});

  @override
  State<PantallaInici> createState() => _PantallaIniciState();
}

class _PantallaIniciState extends State<PantallaInici> {
  int altura = 175;
  int pes = 75;
  int edat = 27;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SelectorSexe(),
          SizedBox(height: 8),
          SelectorAltura(
            altura: altura,
            alCanviarAltura: (novaAltura) {
              setState(() {
                altura = novaAltura;
              });
            }
          ),
          SizedBox(height: 8),
          Row(
            children: [
              SelectorNumero(
                titol: "Pes",
                valorInicial: pes,
                alDecrementar: () {
                  setState(() {
                    pes--;
                  });
                },
                alIncrementar: () {
                  setState(() {
                    pes++;
                  });
                },
              ),
              SizedBox(width: 8),
              SelectorNumero(
                titol: "Edat",
                valorInicial: edat,
                alDecrementar: () {
                  setState(() {
                    edat--;
                  });
                },
                alIncrementar: () {
                  setState(() {
                    edat++;
                  });
                },
              )
            ],
          ),
          Spacer(),
          BotoContinuar(altura: altura, pes: pes)
        ]
      ),
    );
  }
}