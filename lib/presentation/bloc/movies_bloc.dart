import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/injector.dart';

import '../../data/model/movie_model.dart';
import '../../data/repository/movie_repository.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc() : super(MoviesInitial()) {
    on<GetSearchedMoviesEvent>(_getSearchedMoviesEvent);
  }
  final _moviesRepository = injector<MoviesRepository>();

  Future <void> _getSearchedMoviesEvent(
      GetSearchedMoviesEvent event,
      Emitter<MoviesState> emit
      ) async {
    try {
      emit (MoviesLoading());

      final response = await _moviesRepository.loadSearchedMovies(searchTerm : event.searchTerm);
      emit(MoviesSuccess(response));

    }catch(e,stackTrace){
      emit(MoviesError());
      print("hata: $e");
      print("hata stackTrace: $stackTrace");
    }
  }
}
