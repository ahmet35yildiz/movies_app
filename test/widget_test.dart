import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movies_app/presentation/widget/card_movie_title_widget.dart';
import 'package:movies_app/presentation/widget/card_movie_type_widget.dart';
import 'package:movies_app/presentation/widget/card_movie_year_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_country_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_director_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_genre_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_language_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_plot_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_rating_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_released_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_runtime_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_title_widget.dart';
import 'package:movies_app/presentation/widget/detail_movie_year_widget.dart';
import 'package:movies_app/presentation/widget/error_text_widget.dart';

void main() {
  group('MainPage Widget Test', () {
    testWidgets('HomeScreen Widget Test', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: ErrorTextWidget(),
        ),
      ));

      final textFinder = find.text("Please check your search term!");
      expect(textFinder, findsOneWidget);
    });

    testWidgets("Card Widgets", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: CardMovieTitleWidget(
            movieTitle: 'Star Wars',
          ),
        ),
      ));

      final textFinder = find.text("Star Wars");
      expect(textFinder, findsOneWidget);
    });

    testWidgets("Card Widgets", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: CardMovieYearWidget(
            movieYear: '1977',
          ),
        ),
      ));

      final textFinder = find.text("1977");
      expect(textFinder, findsOneWidget);
    });

    testWidgets("Card Widgets", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: CardMovieTypeWidget(
            movieType: 'movie',
          ),
        ),
      ));

      final textFinder = find.text("movie");
      expect(textFinder, findsOneWidget);
    });
  });

  group("DetailPage Widget Test", () {
    testWidgets("DetailPage Widget Test", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: DetailMovieTitleWidget(
            movieTitle: 'Star Wars',
          ),
        ),
      ));

      final textFinder = find.text("Star Wars");
      expect(textFinder, findsOneWidget);
    });

    testWidgets("DetailPage Widget Test", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: DetailMovieYearWidget(
            movieYear: '1977',
          ),
        ),
      ));

      final textFinder = find.text("1977");
      expect(textFinder, findsOneWidget);
    });

    testWidgets("DetailPage Widget Test", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: DetailMovieReleasedWidget(movieReleased: '25 May 1977'),
        ),
      ));

      final textFinder = find.text("25 May 1977");
      expect(textFinder, findsOneWidget);
    });

    testWidgets("DetailPage Widget Test", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: DetailMovieRuntimeWidget(movieRuntime: '121 min'),
        ),
      ));

      final textFinder = find.text("121 min");
      expect(textFinder, findsOneWidget);
    });

    testWidgets("DetailPage Widget Test", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body:
              DetailMovieGenreWidget(movieGenre: 'Action, Adventure, Fantasy'),
        ),
      ));

      final textFinder = find.text("Action, Adventure, Fantasy");
      expect(textFinder, findsOneWidget);
    });

    testWidgets("DetailPage Widget Test", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: DetailMovieDirectorWidget(movieDirector: 'George Lucas'),
        ),
      ));

      final textFinder = find.text("George Lucas");
      expect(textFinder, findsOneWidget);
    });

    testWidgets("DetailPage Widget Test", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: DetailMoviePlotWidget(
              moviePlot:
                  'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.'),
        ),
      ));

      final textFinder = find.text(
          "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.");
      expect(textFinder, findsOneWidget);
    });

    testWidgets("DetailPage Widget Test", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: DetailMovieLanguageWidget(movieLanguage: 'English'),
        ),
      ));

      final textFinder = find.text("English");
      expect(textFinder, findsOneWidget);
    });

    testWidgets("DetailPage Widget Test", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: DetailMovieCountryWidget(movieCountry: 'United States'),
        ),
      ));

      final textFinder = find.text("United States");
      expect(textFinder, findsOneWidget);
    });

    testWidgets("DetailPage Widget Test", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: DetailMovieRatingWidget(movieRating: '8.6'),
        ),
      ));

      final textFinder = find.text("8.6");
      expect(textFinder, findsOneWidget);
    });
  });
}
