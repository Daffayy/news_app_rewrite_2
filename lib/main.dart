import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app_rewrite_2/app/initializer.dart';

import 'app/routes/app_pages.dart';

Future <void> main () async {
  await Initializer.init();
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override

  Widget build (BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}

