import 'movie_model.dart';

class MoviesResponseModel {
  List<MovieModel> moviesResponse;
  String totalResults;
  String response;

  MoviesResponseModel(
      {required this.moviesResponse,
      required this.totalResults,
      required this.response});

  factory MoviesResponseModel.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["Search"] as List;
    String totalResults = json["totalResults"] as String;
    String response = json["Response"] as String;

    var moviesResponse = jsonArray
        .map((jsonArrayObject) => MovieModel.fromJson(jsonArrayObject))
        .toList();

    return MoviesResponseModel(
        moviesResponse: moviesResponse,
        totalResults: totalResults,
        response: response);
  }
}
