part of 'movies_bloc.dart';

@immutable
sealed class MoviesState extends Equatable {
  const MoviesState();

  @override
  List<Object> get props => [];
}

final class MoviesInitial extends MoviesState {}
final class MoviesLoading extends MoviesState {}
final class MoviesSuccess extends MoviesState {
  final List<MovieModel> movies;

  const MoviesSuccess(this.movies);

  @override
  List<Object> get props => [movies];
}
final class MoviesError extends MoviesState {}


