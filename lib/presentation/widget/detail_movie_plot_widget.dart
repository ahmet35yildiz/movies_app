import 'package:flutter/material.dart';

class DetailMoviePlotWidget extends StatelessWidget {
  String moviePlot;
  DetailMoviePlotWidget({super.key, required this.moviePlot});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Plot: ",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            moviePlot,
            style: const TextStyle(
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
