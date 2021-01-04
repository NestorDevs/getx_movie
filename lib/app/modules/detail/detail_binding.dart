import 'package:get/get.dart';
import 'package:getx_movie/app/modules/detail/detail_controller.dart';

class DetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }
}
