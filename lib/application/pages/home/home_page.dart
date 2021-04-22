import 'package:devquiz/application/pages/home/components/app_bar.dart';
import 'package:flutter/material.dart';
import '../../../shared/extensions/screen_util_extension.dart';

class HomePage extends StatelessWidget {
  final double porcentagem = 75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(context, porcentagem),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.width,
            right: 20.width,
            top: 120.height,
            bottom: MediaQuery.of(context).padding.bottom,
          ),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
