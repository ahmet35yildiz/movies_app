import 'package:flutter/material.dart';

class DetailMovieDirectorWidget extends StatelessWidget {
  String  movieDirector;
  DetailMovieDirectorWidget({super.key, required this.movieDirector});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Director: ",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          movieDirector,
          style: const TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
