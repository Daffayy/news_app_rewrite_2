import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app_rewrite_2/app/routes/app_pages.dart';
import 'package:skeletons/skeletons.dart';
import 'package:news_app_rewrite_2/app/modules/home/widget/news_card.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffededed),
      appBar: AppBar(
        backgroundColor: Color(0xffededed),
        elevation: 0,
        title: Text(
          'StarNews',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: Obx(
        () => controller.isLoading.isTrue
            ? SkeletonListView()
            : ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return NewsCard(
                    title: controller.listArticle[index].title,
                    description: controller.listArticle[index].body,
                    id: controller.listArticle[index].id.toString(),
                  );
                },
          itemCount: controller.listArticle.length,
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.toNamed(Routes.SPLASH_ACREEN);
        },
        backgroundColor: Color(0xffd9d9d9),
        child: Icon(Icons.add, color: Color(0xff000000),),
      ),
    );
  }
}
