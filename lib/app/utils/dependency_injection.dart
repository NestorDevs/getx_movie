import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:getx_movie/app/data/providers/local/local_auth.dart';
import 'package:getx_movie/app/data/providers/remote/authentication_api.dart';
import 'package:getx_movie/app/data/providers/remote/movies_api.dart';
import 'package:getx_movie/app/data/repositories/local/local_auth_repository.dart';
import 'package:getx_movie/app/data/repositories/remote/authentication_repository.dart';
import 'package:getx_movie/app/data/repositories/remote/movie_repository.dart';

class DependencyInjection {
  static void init() {
    Get.lazyPut<FlutterSecureStorage>(() => FlutterSecureStorage(),
        fenix: true);
    Get.lazyPut<Dio>(
        () => Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/3')),
        fenix: true);

    // Providers
    Get.lazyPut<AuthenticationApi>(() => AuthenticationApi(), fenix: true);
    Get.lazyPut<LocalAuth>(() => LocalAuth(), fenix: true);
    Get.lazyPut<MoviesApi>(() => MoviesApi(), fenix: true);

    // Repositories
    Get.lazyPut<AuthenticationRepository>(() => AuthenticationRepository(),
        fenix: true);
    Get.lazyPut<LocalAuthRepository>(() => LocalAuthRepository(), fenix: true);
    Get.lazyPut<MoviesRepository>(() => MoviesRepository(), fenix: true);
  }
}
