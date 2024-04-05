part of 'movies_bloc.dart';

@immutable
sealed class MoviesEvent extends Equatable{
  const MoviesEvent();

  @override
  List<Object> get props => [];
}

final class GetMoviesEvent extends MoviesEvent {
  @override
  List<Object> get props => [];
}
