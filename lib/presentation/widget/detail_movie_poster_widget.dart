import 'package:flutter/material.dart';

class DetailMoviePosterWidget extends StatelessWidget {
  String moviePoster;
  DetailMoviePosterWidget({super.key, required this.moviePoster});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: FadeInImage.assetNetwork(
          placeholder: "assets/images/loading.gif",
          image: moviePoster,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
