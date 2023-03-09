import 'package:get/get.dart';

import '../modules/detail_news_screen/bindings/detail_news_screen_binding.dart';
import '../modules/detail_news_screen/views/detail_news_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/post_news_screen/bindings/post_news_screen_binding.dart';
import '../modules/post_news_screen/views/post_news_screen_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_NEWS_SCREEN,
      page: () => DetailNewsScreenView(),
      binding: DetailNewsScreenBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.POST_NEWS_SCREEN,
      page: () => const PostNewsScreenView(),
      binding: PostNewsScreenBinding(),
    ),
  ];
}
