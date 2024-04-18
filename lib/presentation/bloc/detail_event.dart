part of 'detail_bloc.dart';

@immutable
sealed class DetailEvent extends Equatable{
  const DetailEvent();

  @override
  List<Object?> get props => [];
}

final class GetMovieDetailEvent extends DetailEvent {
  final String? imdbId;
  const GetMovieDetailEvent({this.imdbId});

  @override
  List<Object?> get props => [imdbId];
}
