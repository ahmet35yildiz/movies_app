import 'package:flutter/material.dart';

class DetailMovieYearWidget extends StatelessWidget {
  String movieYear;
  DetailMovieYearWidget({super.key, required this.movieYear});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Year: ",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          movieYear,
          style: const TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
