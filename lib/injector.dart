import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_app/data/repository/movie_repository.dart';
import 'package:movies_app/presentation/bloc/detail_bloc.dart';
import 'package:movies_app/presentation/bloc/movies_bloc.dart';

final injector = GetIt.instance;

void diSetup() {


  //dio
  injector.registerLazySingleton(Dio.new);
  //network
  injector.registerLazySingleton(MoviesRepository.new);  //tek bir instance oluşturur
  //repository

  //bloc
  injector.registerFactory(MoviesBloc.new);  //ihtiyaç olan yerde, her seferinde yeni bir instance oluşturur
  injector.registerFactory(DetailBloc.new);
}