import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:movies_app/data/model/movie_model.dart';
import 'package:movies_app/data/model/movie_response_model.dart';

class MoviesRepository {
  List<MovieModel> parseMovies(Map<String, dynamic> response) {
    return MoviesResponseModel.fromJson(response).moviesResponse;
  }

  Future<List<MovieModel>> loadMovies() async {
    var dio = Dio();
    var response = await dio.get(
      "https://www.omdbapi.com/",
      queryParameters: {"s": "red", "apikey": "ae67ea1a"},
    );
    return parseMovies(response.data);
  }

}
