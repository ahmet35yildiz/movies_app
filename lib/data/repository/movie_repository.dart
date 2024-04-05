import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:movies_app/data/model/movie_model.dart';
import 'package:movies_app/data/model/movie_response_model.dart';

class MoviesRepository {
  List<MovieModel> parseMovies(Map<String, dynamic> response) {
    return MoviesResponseModel.fromJson(response).moviesResponse;
  }

  Future<List<MovieModel>> loadMovies() async {
    var url = "https://www.omdbapi.com/?s=red&apikey=ae67ea1a";
    var response = await Dio().get(url);
    return parseMovies(response.data);
  }
}
