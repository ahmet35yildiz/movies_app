import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/colors.dart';
import 'package:movies_app/presentation/widget/movie_card_widget.dart';

import '../bloc/movies_bloc.dart';

@RoutePage(name: "MainPageRoute")
class MainPage extends StatelessWidget {
  MainPage({super.key});

  bool searching = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MoviesBloc()..add(GetMoviesEvent()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          title: TextField(
            decoration: const InputDecoration(
              hintText: "Search Movies",
              hintStyle: TextStyle(color: Colors.black54)
            ),
            onChanged: (searchTerm){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Searching for $searchTerm"),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
          ),
        ),
        body: Column(
          children:[
            Expanded(
                child: MovieCardWidget())
          ]
        ),
      ),
    );
  }
}