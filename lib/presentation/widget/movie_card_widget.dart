import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/colors.dart';
import 'package:movies_app/presentation/bloc/movies_bloc.dart';
import 'package:movies_app/presentation/widget/card_movie_poster_widget.dart';
import 'package:movies_app/presentation/widget/card_movie_title_widget.dart';
import 'package:movies_app/presentation/widget/card_movie_type_widget.dart';
import 'package:movies_app/presentation/widget/card_movie_year_widget.dart';
import 'package:movies_app/presentation/widget/error_text_widget.dart';
import 'package:movies_app/presentation/widget/lottie_animation_widget.dart';
import 'package:movies_app/router/app_router.gr.dart';

class MovieCardWidget extends StatelessWidget {
  const MovieCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (context, state) => switch (state) {
        MoviesLoading() => const Center(child: CircularProgressIndicator()),
        MoviesError() => const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ErrorTextWidget(),
                LottieAnimationWidget(),
              ],
            ),
          ),
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
                    onTap: () =>
                        context.router.push(DetailRoute(imdbId: movie.imdbId)),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: screenHeight / 3.5,
                                width: screenWidth / 2.5,
                                child: CardMoviePosterWidget(
                                    moviePoster: movie.poster),
                              ),
                              SizedBox(
                                width: screenWidth / 2.5,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CardMovieTitleWidget(
                                        movieTitle: movie.title),
                                    CardMovieYearWidget(movieYear: movie.year),
                                    CardMovieTypeWidget(movieType: movie.type),
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
        _ => const Text(""),
      },
    );
  }
}
