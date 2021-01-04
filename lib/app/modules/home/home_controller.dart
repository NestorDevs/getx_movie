import 'package:get/get.dart';
import 'package:getx_movie/app/data/models/movie.dart';
import 'package:getx_movie/app/data/repositories/local/local_auth_repository.dart';
import 'package:getx_movie/app/data/repositories/remote/movie_repository.dart';
import 'package:getx_movie/app/routes/app_routes.dart';

class HomeController extends GetxController {
  final LocalAuthRepository _localAuthRepository =
      Get.find<LocalAuthRepository>();

  final MoviesRepository _moviesRepository = Get.find<MoviesRepository>();

  List<Movie> _movies = [];
  List<Movie> get movies => _movies;

  Future<void> logOut() async {
    await _localAuthRepository.clearSession();
    Get.offNamedUntil(AppRoutes.LOGIN, (_) => false);
  }

  @override
  void onReady() {
    super.onReady();
    _load();
  }

  _load() async {
    try {
      _movies = await _moviesRepository.getTopMovies();
      print('movies:::: ${_movies.length}');
      update();
    } catch (e) {
      print(e);
    }
  }
}
