import 'package:devquiz/application/navigation/navigation.dart';
import 'package:devquiz/shared/constants/app_gradients.dart';
import 'package:devquiz/shared/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Get.offAllNamed(Routes.HOME);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: AppGradients.linear),
        alignment: Alignment.center,
        child: Image.asset(AppImages.logo),
      ),
    );
  }
}
