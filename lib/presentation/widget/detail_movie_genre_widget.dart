import 'package:flutter/material.dart';

class DetailMovieGenreWidget extends StatelessWidget {
  String movieGenre;
  DetailMovieGenreWidget({super.key, required this.movieGenre});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Genre: ",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          movieGenre,
          style: const TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
