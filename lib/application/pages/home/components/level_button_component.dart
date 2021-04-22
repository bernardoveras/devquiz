
import 'package:devquiz/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../shared/extensions/screen_util_extension.dart';

class LevelButtonComponent extends StatelessWidget {
  final String label;

  LevelButtonComponent(
    this.label, {
    Key? key,
  })  : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(label)),
        super(key: key);

  final config = {
    "Fácil": {
      "color": AppColors.levelButtonFacil,
      "borderColor": AppColors.levelButtonBorderFacil,
      "fontColor": AppColors.levelButtonTextFacil,
    },
    "Médio": {
      "color": AppColors.levelButtonMedio,
      "borderColor": AppColors.levelButtonBorderMedio,
      "fontColor": AppColors.levelButtonTextMedio,
    },
    "Difícil": {
      "color": AppColors.levelButtonDificil,
      "borderColor": AppColors.levelButtonBorderDificil,
      "fontColor": AppColors.levelButtonTextDificil,
    },
    "Perito": {
      "color": AppColors.levelButtonPerito,
      "borderColor": AppColors.levelButtonBorderPerito,
      "fontColor": AppColors.levelButtonTextPerito,
    },
  };

  Color get color => config[label]!['color']!;
  Color get borderColor => config[label]!['borderColor']!;
  Color get fontColor => config[label]!['fontColor']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.height,
      width: 80.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.width,
        ),
        borderRadius: BorderRadius.circular(28.radius),
        color: color,
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: GoogleFonts.notoSans(
          color: fontColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
