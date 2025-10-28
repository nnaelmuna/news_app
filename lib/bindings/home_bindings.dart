import 'package:get/get.dart';
import 'package:theindtimes_app/controllers/news_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsController>(() => NewsController());
  }
}