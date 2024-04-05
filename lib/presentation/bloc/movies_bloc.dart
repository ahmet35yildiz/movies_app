import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../data/model/movie_model.dart';
import '../../data/repository/movie_repository.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc() : super(MoviesInitial()) {
    on<GetMoviesEvent>(_GetMoviesEvent);
  }
  final _moviesRepository = MoviesRepository();


  FutureOr<void> _GetMoviesEvent(
      GetMoviesEvent, Emitter<MoviesState> emit
      ) async {
    try {
      emit (MoviesLoading());

      final response = await _moviesRepository.loadMovies();
      emit(MoviesSuccess(response));
    } catch (e) {
      emit(MoviesError());
      print(e.toString());
    }
  }
}
