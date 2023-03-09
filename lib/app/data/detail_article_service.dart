import 'package:get/get.dart';


class DetailArticleService {
  final _connect = Get.find<GetConnect>();

  Future getDetailArticles({required String id}) async {
    final response = await _connect.get('posts/$id');
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }
}