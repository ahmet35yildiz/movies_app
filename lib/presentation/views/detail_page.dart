import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';


@RoutePage()
class DetailPage extends StatelessWidget {
  final String? imdbId;

  const DetailPage({super.key, this.imdbId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network("https://m.media-amazon.com/images/M/MV5BNzlkNzVjMDMtOTdhZC00MGE1LTkxODctMzFmMjkwZmMxZjFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg"),
            Text("The Fast and the Furious"),
            Text("Year: 2001"),
            Text("Runtime: 106 min"),
            Text("Genre: Action, Crime, Thriller"),
            Text("Director: Rob Cohen"),
            Text("IMDB ID: $imdbId"),
          ],
        ),
      ),
    );
  }
}
