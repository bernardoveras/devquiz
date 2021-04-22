import 'package:flutter/material.dart';

import 'level_button_component.dart';

class LevelGroupComponent extends StatelessWidget {
  const LevelGroupComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LevelButtonComponent('Fácil'),
        LevelButtonComponent('Médio'),
        LevelButtonComponent('Difícil'),
        LevelButtonComponent('Perito'),
      ],
    );
  }
}
