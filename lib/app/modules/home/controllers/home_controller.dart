import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../../../data/article_service.dart';
import '../models/article_models.dart';

class HomeController extends GetxController {

  RxBool isLoading = false.obs;
  RxList<ArticleNews> listArticle = <ArticleNews>[].obs;
  final newsService = ArticleService();

  @override
  void onInit() {
    super.onInit();
    getListArticles();
  }

  getListArticles() async {
    isLoading(true);
    try {
      final response = await newsService.getArticles();
      response.map((v) {
        // print(v);
        Logger().d(v);
        final news = ArticleNews.fromJson(v);
        listArticle.add(news);
      }).toList();
      isLoading(false);
    } catch (e) {
      isLoading(false);
      Get.snackbar('Controller Error', e.toString());
    }
  }

  // getAllListArticles() async {
  //   isLoading(true);
  //   try {
  //     var response = await newsService.getAllArticle();
  //     Logger().d(response.length);
  //     listArticle.value = response;
  //     isLoading.toggle();
  //
  //   } catch (e) {
  //     isLoading(false);
  //     Get.snackbar('Controller Error', e.toString());
  //   }
  // }
  // getAllArticle() async {
  //   isLoading(true);
  //   try {
  //     var response = await newsService.getAllArticle();
  //     Logger().d(response.length);
  //     listArticle.value = response;
  //     isLoading.toggle();
  //
  //   } catch (e) {
  //     isLoading(false);
  //     Get.snackbar('Controller Error', e.toString());
  //   }
  // }

}
