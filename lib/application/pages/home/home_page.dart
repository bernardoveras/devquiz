import 'package:devquiz/application/pages/home/components/app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final double porcentagem = 75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(context, porcentagem),
    );
  }
}
