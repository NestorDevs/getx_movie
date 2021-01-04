import 'package:get/get.dart';
import 'package:getx_movie/app/data/models/request_token.dart';
import 'package:getx_movie/app/data/repositories/local/local_auth_repository.dart';
import 'package:getx_movie/app/routes/app_routes.dart';

class SplashController extends GetxController {
  final LocalAuthRepository _localAuthRepository =
      Get.find<LocalAuthRepository>();

  @override
  void onReady() {
    super.onReady();
    _init();
  }

  _init() async {
    try {
      final RequestToken requestToken = await _localAuthRepository.session;

      Get.offNamed(
        requestToken != null ? AppRoutes.HOME : AppRoutes.LOGIN,
      );
    } catch (e) {
      print(e);
    }
  }
}
