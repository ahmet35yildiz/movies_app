part of 'movies_bloc.dart';

@immutable
sealed class MoviesEvent extends Equatable{
  const MoviesEvent();

  @override
  List<Object?> get props => [];
}

final class GetSearchedMoviesEvent extends MoviesEvent {
  final String? searchTerm;
  const GetSearchedMoviesEvent({this.searchTerm});

  @override
  List<Object?> get props => [searchTerm];
}
