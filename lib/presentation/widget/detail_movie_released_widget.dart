import 'package:flutter/material.dart';

class DetailMovieReleasedWidget extends StatelessWidget {
  String movieReleased;
  DetailMovieReleasedWidget({super.key, required this.movieReleased});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Released: ",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          movieReleased,
          style: const TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
