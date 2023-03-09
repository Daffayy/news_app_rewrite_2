import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffededed),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 320,bottom: 400),
          child: InkWell(
            onTap: (){
              Get.toNamed(Routes.HOME);
            },
            child: Column(
              children: [
                Image(image: AssetImage('assets/images/star_1.png')),
                Text(
                  'StarNews',
                  style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
