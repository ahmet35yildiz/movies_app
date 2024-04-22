import 'package:flutter/material.dart';

class DetailMovieRatingWidget extends StatelessWidget {
  String movieRating;
  DetailMovieRatingWidget({super.key, required this.movieRating});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "IMDB Rating: ",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          movieRating,
          style: const TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
