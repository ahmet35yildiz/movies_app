import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/colors.dart';
import 'package:movies_app/presentation/bloc/movies_bloc.dart';
import 'package:movies_app/router/app_router.gr.dart';

class MovieCardWidget extends StatelessWidget {
  const MovieCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (context, state) => switch (state) {
        MoviesLoading() =>
          const Center(child: CircularProgressIndicator()),
        MoviesError() => const Center(child: Text("Error")),
        MoviesSuccess() => ListView.builder(
            itemCount: state.movies.length,
            itemBuilder: (context, index) {
              final movie = state.movies[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight / 3,
                  child: GestureDetector(
                    onTap: () => context.router.push(DetailRoute(imdbId: movie.imdbId)),
                    child: Card(
                      elevation: 5,
                      shadowColor: secondColor,
                      child: Container(
                        decoration: BoxDecoration(
                          color: thirdColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                  height: screenHeight / 3.5,
                                  child: Image.network(movie.poster),),
                              SizedBox(width: screenWidth / 2.5,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      movie.title,
                                      style: TextStyle(
                                        color: secondColor,
                                        fontSize: 25,
                                      ),
                                      softWrap: true,
                                      textAlign: TextAlign.center,
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      movie.year,
                                      style: TextStyle(
                                        color: secondColor,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      movie.type,
                                      style: TextStyle(
                                        color: secondColor,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        _ => const Text("safdsfdf"),
      },
    );
  }
}
