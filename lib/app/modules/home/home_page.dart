import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_movie/app/data/models/movie.dart';
import 'package:getx_movie/app/modules/home/home_controller.dart';
import 'package:getx_movie/app/modules/home/widgets/movie_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        appBar: AppBar(actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: _.logOut,
          )
        ]),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.transparent,
          child: ListView.builder(
            itemCount: _.movies.length,
            itemBuilder: (ctx, index) {
              final Movie movie = _.movies[index];
              return MovieItem(movie: movie);
            },
          ),
        ),
      ),
    );
  }
}
