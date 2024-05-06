import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../injector.dart';
import '../model/movie_detail_model.dart';
import '../model/movie_model.dart';
import '../model/movie_response_model.dart';

class ApiService {
  final Dio dio = injector<Dio>();

  List<MovieModel> parseMovies(Map<String, dynamic> response) {
    return MoviesResponseModel.fromJson(response).moviesResponse;
  }

  Future<List<MovieModel>> loadSearchedMovies({String? searchTerm}) async {
    var response = await dio.get(
      "${dotenv.env["ENDPOINT"]}",
      queryParameters: {"s": searchTerm??"", "apikey": "${dotenv.env["APIKEY"]}"},
    );
    print("di çalıştı");
    return parseMovies(response.data);
  }

  MovieDetailModel parseMovieDetail(Map<String, dynamic> response) {
    return MovieDetailModel.fromJson(response);
  }

  Future<MovieDetailModel> loadMovieDetail({String? imdbId}) async {
    var response = await dio.get(
      "${dotenv.env["ENDPOINT"]}",
      queryParameters: {"i": imdbId, "apikey": "${dotenv.env["APIKEY"]}"},
    );
    return parseMovieDetail(response.data);
  }
}