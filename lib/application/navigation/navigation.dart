import 'package:devquiz/application/pages/home/home_page.dart';
import 'package:devquiz/application/pages/splash/splash_home.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'bindings/_bindings.dart';

class Navigation {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.SPLASHSCREEN,
      page: () => SplashPage(),
    ),
  ];
}

class Routes {
  static Future<String> get initialRoute async {
    return SPLASHSCREEN;
  }

  static const SPLASHSCREEN = '/';
  static const HOME = '/home';
}
