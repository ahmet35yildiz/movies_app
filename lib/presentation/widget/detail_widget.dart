import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/presentation/bloc/detail_bloc.dart';
import 'package:movies_app/presentation/widget/detail_movie_country_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_director_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_genre_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_language_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_plot_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_poster_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_rating_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_released_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_runtime_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_title_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_year_widget.dart';

import '../../colors.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return BlocBuilder<DetailBloc, DetailState>(
      builder: (context, state) => switch (state) {
        DetailLoading() => const Center(child: CircularProgressIndicator()),
        DetailError() => const Center(child: Text("Error")),
        DetailSuccess() => Scaffold(
            appBar: AppBar(
                title: Text(state.movieDetail.title),
                backgroundColor: backgroundColor),
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [backgroundColor, Colors.white70], //
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: screenHeight / 2,
                            child: DetailMoviePosterWidget(moviePoster: state.movieDetail.poster)
                          ),
                          SizedBox(height: screenHeight / 20),
                          DetailMovieTitleWidget(movieTitle: state.movieDetail.title),
                          DetailMovieYearWidget(movieYear: state.movieDetail.year),
                          DetailMovieReleasedWidget(movieReleased: state.movieDetail.released),
                          DetailMovieRuntimeWidget(movieRuntime: state.movieDetail.runtime),
                          DetailMovieGenreWidget(movieGenre: state.movieDetail.genre),
                          DetailMovieDirectorWidget(movieDirector: state.movieDetail.director),
                          DetailMoviePlotWidget(moviePlot: state.movieDetail.plot),
                          DetailMovieLanguageWidget(movieLanguage: state.movieDetail.language),
                          DetailMovieCountryWidget(movieCountry: state.movieDetail.country),
                          DetailMovieRatingWidget(movieRating: state.movieDetail.imdbRating),
                        ]),
                  ),
                ),
              ),
            ),
          ),
        _ => const Center(child: Text("Error")),
      },
    );
  }
}
