import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/colors.dart';
import 'package:movies_app/presentation/widget/movie_card_widget.dart';

import '../bloc/movies_bloc.dart';

@RoutePage(name: "MainPageRoute")
class MainPage extends StatelessWidget {
  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MoviesBloc()..add(const GetSearchedMoviesEvent()),
      child: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: TextField(
          decoration: const InputDecoration(
              hintText: "Search Movies",
              hintStyle: TextStyle(color: Colors.black54)
          ),
          onChanged: (searchTerm){
            context.read<MoviesBloc>().add(GetSearchedMoviesEvent(searchTerm: searchTerm));
          },
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                backgroundColor,
                Colors.white70
              ], // Değişiklik: Arka plan gradient
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: MovieCardWidget()),
    );
  }
}

