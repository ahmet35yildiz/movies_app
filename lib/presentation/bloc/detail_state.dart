part of 'detail_bloc.dart';

@immutable
sealed class DetailState extends Equatable{
  const DetailState();

  @override
  List<Object?> get props => [];
}

final class DetailInitial extends DetailState {}
final class DetailLoading extends DetailState {}
final class DetailSuccess extends DetailState {
  final MovieDetailModel movieDetail;

  const DetailSuccess(this.movieDetail);

  @override
  List<Object?> get props => [movieDetail];
}
final class DetailError extends DetailState {}
