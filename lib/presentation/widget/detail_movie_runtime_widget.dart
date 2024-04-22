import 'package:flutter/material.dart';

class DetailMovieRuntimeWidget extends StatelessWidget {
  String movieRuntime;
  DetailMovieRuntimeWidget({super.key, required this.movieRuntime});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Runtime: ",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          movieRuntime,
          style: const TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
