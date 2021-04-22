import 'package:devquiz/application/pages/home/components/app_bar.dart';
import 'package:devquiz/shared/constants/app_colors.dart';
import 'package:devquiz/shared/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../shared/extensions/screen_util_extension.dart';
import 'components/level_group_component.dart';

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
            children: [
              LevelGroupComponent(),
            ],
          ),
        ),
      ),
    );
  }
}

