import 'package:devquiz/shared/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'navigation/navigation.dart';

class Application extends StatelessWidget {
  final String initialRoute;
  Application(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(411, 820),
      builder: () {
        return GetMaterialApp(
          title: 'Pré-Venda Mobile',
          debugShowCheckedModeBanner: false,
          initialRoute: initialRoute,
          getPages: Navigation.routes,
          defaultTransition: Transition.cupertino,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: ThemeMode.light,
          builder: (context, child) => GestureDetector(
            behavior: HitTestBehavior.opaque,
            child: child,
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          ),
        );
      },
    );
  }
}
