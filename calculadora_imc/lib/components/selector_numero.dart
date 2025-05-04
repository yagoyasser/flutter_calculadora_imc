import 'package:calculadora_imc/nucli/app_colors.dart';
import 'package:calculadora_imc/nucli/estils_texts.dart';
import 'package:flutter/material.dart';

class SelectorNumero extends StatefulWidget {
  final String titol;
  final int valorInicial;
  final Function() alIncrementar;
  final Function() alDecrementar;

  const SelectorNumero({
    super.key,
    required this.titol,
    required this.valorInicial,
    required this.alIncrementar,
    required this.alDecrementar,
  });

  @override
  State<SelectorNumero> createState() => _SelectorNumeroState();
}

class _SelectorNumeroState extends State<SelectorNumero> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.fonsComponent,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "${widget.titol}",
                style: EstilsTexts.textClar
              ),
              Text(
                widget.valorInicial.toString(),
                style: EstilsTexts.textClarGran,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    heroTag: null, // S'ha de declarar perquè l'aplicació no es trenque quan es canvia de pantalla, ja que hi ha dos elements Hero amb la mateixa etiqueta (tag)
                    backgroundColor: AppColors.fons,
                    foregroundColor: Colors.white,
                    shape: CircleBorder(),
                    child:
                      Icon(Icons.remove),
                    onPressed: () {
                      widget.alDecrementar();
                    } 
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FloatingActionButton(
                    heroTag: null, // S'ha de declarar perquè l'aplicació no es trenque quan es canvia de pantalla, ja que hi ha dos elements Hero amb la mateixa etiqueta (tag)
                    backgroundColor: AppColors.fons,
                    foregroundColor: Colors.white,
                    shape: CircleBorder(),
                    child:
                      Icon(Icons.add),
                    onPressed: () {
                      widget.alIncrementar();
                    } 
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}