import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/presentation/bloc/detail_bloc.dart';
import 'package:movies_app/presentation/bloc/movies_bloc.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return BlocBuilder<DetailBloc, DetailState>(
      builder: (context, state) => switch (state) {
        DetailLoading() => const Center(child: CircularProgressIndicator()),
        DetailError() => const Center(child: Text("Error")),
        DetailSuccess() => SingleChildScrollView(
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: screenHeight / 2,
                    child: Image.network(state.movieDetail.poster)),
                Text("Title: ${state.movieDetail.title}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                Text("Year: ${state.movieDetail.year}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                Text("Released: ${state.movieDetail.released}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                Text("Runtime: ${state.movieDetail.runtime}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                Text("Genre: ${state.movieDetail.genre}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                Text("Director: ${state.movieDetail.director}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                Text("Plot: ${state.movieDetail.plot}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                Text("Language: ${state.movieDetail.language}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                Text("Country: ${state.movieDetail.country}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                Text("IMDB Rating: ${state.movieDetail.imdbRating}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),

              ]
            ),
          ),
        ),
        _ => const Center(child: Text("Error")),


      },
    );
  }
}
