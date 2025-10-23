import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:news_app/bindings/home_bindings.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/screens/news_detail_screen.dart';
import 'package:news_app/screens/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NEWS_DETAIL,
      page: () => NewsDetailScreen(),
    ),
  ];
}