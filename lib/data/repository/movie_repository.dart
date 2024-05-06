import 'dart:async';
import 'package:movies_app/data/service/api_service.dart';
import 'package:movies_app/injector.dart';

class MoviesRepository {
  final apiService = injector<ApiService>();

  Future loadSearchedMovies({String? searchTerm}) async {
    return await apiService.loadSearchedMovies(searchTerm: searchTerm);
  }

  Future loadMovieDetail({String? imdbId}) async {
    return await apiService.loadMovieDetail(imdbId: imdbId);
  }

}
