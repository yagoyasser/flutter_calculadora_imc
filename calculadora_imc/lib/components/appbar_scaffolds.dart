import 'package:calculadora_imc/nucli/app_colors.dart';
import 'package:flutter/material.dart';

class AppbarScaffolds extends StatelessWidget implements PreferredSizeWidget{
  final String titol;

  const AppbarScaffolds({
    super.key,
    required this.titol
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          titol,
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
    );
  }

  // Mètode per a obtindre la mida del AppBar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}