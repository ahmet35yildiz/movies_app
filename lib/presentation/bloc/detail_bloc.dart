import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/injector.dart';

import '../../data/model/movie_detail_model.dart';
import '../../data/repository/movie_repository.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(DetailInitial()) {
    on<GetMovieDetailEvent>( _getMovieDetailEvent);
  }
  final _moviesRepository = injector<MoviesRepository>();

  Future <void> _getMovieDetailEvent(
      GetMovieDetailEvent event,
      Emitter<DetailState> emit
      ) async {
    try {
      emit (DetailLoading());

      final response = await _moviesRepository.loadMovieDetail(imdbId: event.imdbId);
      emit(DetailSuccess(response));

    } catch (e, stackTrace) {
      emit(DetailError());
      print("hata: $e");
      print("hata stackTrace: $stackTrace");
    }
  }
}
