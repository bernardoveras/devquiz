import 'package:devquiz/shared/helpers/theme_helper.dart';
import 'package:devquiz/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Initializer {
  static Future<void> init() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();

      AppTheme.changeStatusBar<Light>(backgroundColor: Colors.transparent);
      
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
