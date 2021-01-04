import 'package:flutter/material.dart';
import 'package:getx_movie/app/data/models/movie.dart';
import 'package:getx_movie/app/utils/constants.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;
  const MovieItem({
    Key key,
    @required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
          '${Constants.THE_MOVIE_DB_IMAGE_PATH}${movie.posterPath}'),
      title: Text(movie.title),
      subtitle: Text(movie.overview),
    );
  }
}
