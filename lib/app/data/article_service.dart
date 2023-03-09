import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:news_app_rewrite_2/app/modules/home/models/article_models.dart';

class ArticleService {
  final _connect = Get.find<GetConnect>();

  // Future<List<ArticleNews>> getAllArticle() async {
  //   final response = await _connect.get('post', decoder: (value) {
  //     return List<ArticleNews>.from(value.map((x) => ArticleNews.fromJson(x)));
  //   });
  //   Logger().d(response.statusCode);
  //   Logger().d(response.body!.first.id);
  //
  //   if (!response.hasError) {
  //     return response.body!;
  //   } else {
  //     throw Get.snackbar(
  //       "Error",
  //       response.statusCode.toString(),
  //       duration: const Duration(seconds: 10),
  //     );
  //   }
  // }

  Future<List> getArticles() async {
    final response = await _connect.get('posts');
    Logger().d(response);
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar(
        "Error",
        response.statusCode.toString(),
        duration: const Duration(seconds: 10),
      );
    }
  }

}
