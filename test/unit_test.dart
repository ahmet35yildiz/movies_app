import 'package:flutter_test/flutter_test.dart';
import 'package:movies_app/data/model/movie_detail_model.dart';
import 'package:movies_app/data/model/movie_model.dart';
import 'package:movies_app/data/repository/movie_repository.dart';

void main() {
  group("Movies & Details", () {
    test("loadMovieDetail should return movie detail", () async {
      // Given
      const imdbIdTest = "tt0232500";

      // When
      final result = await MoviesRepository().loadMovieDetail(imdbId: imdbIdTest);

      // Then
      expect(result.title, "The Fast and the Furious");
      expect(result.year, "2001");
      expect(result.released, "22 Jun 2001");
      expect(result.runtime, "106 min");
      expect(result.genre, "Action, Crime, Thriller");
      expect(result.director, "Rob Cohen");
      expect(result.plot, "Los Angeles police officer Brian O'Conner must decide where his loyalty really lies when he becomes enamored with the street racing world he has been sent undercover to destroy.");
      expect(result.language, "English, Spanish");
      expect(result.country, "United States, Germany");
      expect(result.poster, "https://m.media-amazon.com/images/M/MV5BNzlkNzVjMDMtOTdhZC00MGE1LTkxODctMzFmMjkwZmMxZjFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg");
      expect(result.imdbRating, "6.8");
    });

    test("loadSearchedMovies should return list of movies", () async {
      // Given
      const searchTermTest = "Fast";

      // When
      final result = await MoviesRepository().loadSearchedMovies(searchTerm: searchTermTest);

      // Then
      expect(result.length, 10);
      expect(result[0].title, "The Fast and the Furious");
      expect(result[0].year, "2001");
      expect(result[0].imdbId, "tt0232500");
      expect(result[0].type, "movie");
      expect(result[0].poster,
          "https://m.media-amazon.com/images/M/MV5BNzlkNzVjMDMtOTdhZC00MGE1LTkxODctMzFmMjkwZmMxZjFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg");
    });
  });

  group("Parse", () {
    test("MovieModel should be parsed correctly", () {
      // Given
      var item = {
        "Title": "The Fast and the Furious",
        "Year": "2001",
        "imdbID": "tt0232500",
        "Type": "movie",
        "Poster": "https://m.media-amazon.com/images/M/MV5BNzlkNzVjMDMtOTdhZC00MGE1LTkxODctMzFmMjkwZmMxZjFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg"
      };

      //When
      final result = MovieModel.fromJson(item);

      // Then
      expect(result.title, "The Fast and the Furious");
      expect(result.year, "2001");
      expect(result.imdbId, "tt0232500");
      expect(result.type, "movie");
      expect(result.poster,
          "https://m.media-amazon.com/images/M/MV5BNzlkNzVjMDMtOTdhZC00MGE1LTkxODctMzFmMjkwZmMxZjFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg");
    });

    test("MovieDetailModel should be parsed correctly", () {
      // Given
      var item = {
        "Title": "The Fast and the Furious",
        "Year": "2001",
        "Released": "22 Jun 2001",
        "Runtime": "106 min",
        "Genre": "Action, Crime, Thriller",
        "Director": "Rob Cohen",
        "Plot": "Los Angeles police officer Brian O'Conner must decide where his loyalty really lies when he becomes enamored with the street racing world he has been sent undercover to destroy.",
        "Language": "English, Spanish",
        "Country": "United States, Germany",
        "Poster": "https://m.media-amazon.com/images/M/MV5BNzlkNzVjMDMtOTdhZC00MGE1LTkxODctMzFmMjkwZmMxZjFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg",
        "imdbRating": "6.8"
      };

      // When
      final result = MovieDetailModel.fromJson(item);

      // Then
      expect(result.title, "The Fast and the Furious");
      expect(result.year, "2001");
      expect(result.released, "22 Jun 2001");
      expect(result.runtime, "106 min");
      expect(result.genre, "Action, Crime, Thriller");
      expect(result.director, "Rob Cohen");
      expect(result.plot, "Los Angeles police officer Brian O'Conner must decide where his loyalty really lies when he becomes enamored with the street racing world he has been sent undercover to destroy.");
      expect(result.language, "English, Spanish");
      expect(result.country, "United States, Germany");
      expect(result.poster, "https://m.media-amazon.com/images/M/MV5BNzlkNzVjMDMtOTdhZC00MGE1LTkxODctMzFmMjkwZmMxZjFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg");
      expect(result.imdbRating, "6.8");
    });

    test("parseMovieDetail should be parsed correctly.", () {
      // Given
      var item = {
        "Title": "The Fast and the Furious",
        "Year": "2001",
        "Released": "22 Jun 2001",
        "Runtime": "106 min",
        "Genre": "Action, Crime, Thriller",
        "Director": "Rob Cohen",
        "Plot": "Los Angeles police officer Brian O'Conner must decide where his loyalty really lies when he becomes enamored with the street racing world he has been sent undercover to destroy.",
        "Language": "English, Spanish",
        "Country": "United States, Germany",
        "Poster": "https://m.media-amazon.com/images/M/MV5BNzlkNzVjMDMtOTdhZC00MGE1LTkxODctMzFmMjkwZmMxZjFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg",
        "imdbRating": "6.8"
      };

      // When
      final result = MoviesRepository().parseMovieDetail(item);

      // Then
      expect(result.title, "The Fast and the Furious");
      expect(result.year, "2001");
      expect(result.released, "22 Jun 2001");
      expect(result.runtime, "106 min");
      expect(result.genre, "Action, Crime, Thriller");
      expect(result.director, "Rob Cohen");
      expect(result.plot, "Los Angeles police officer Brian O'Conner must decide where his loyalty really lies when he becomes enamored with the street racing world he has been sent undercover to destroy.");
      expect(result.language, "English, Spanish");
      expect(result.country, "United States, Germany");
      expect(result.poster, "https://m.media-amazon.com/images/M/MV5BNzlkNzVjMDMtOTdhZC00MGE1LTkxODctMzFmMjkwZmMxZjFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg");
      expect(result.imdbRating, "6.8");
    });
  });
}
