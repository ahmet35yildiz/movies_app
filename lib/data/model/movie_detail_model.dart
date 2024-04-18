class MovieDetailModel {
  final String title;
  final String year;
  final String released;
  final String runtime;
  final String genre;
  final String director;
  final String plot;
  final String language;
  final String country;
  final String poster;
  final String imdbRating;

  MovieDetailModel({
    required this.title,
    required this.year,
    required this.released,
    required this.runtime,
    required this.genre,
    required this.director,
    required this.plot,
    required this.language,
    required this.country,
    required this.poster,
    required this.imdbRating,
  });

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailModel(
      title: json["Title"] as String,
      year: json["Year"] as String,
      released: json["Released"] as String,
      runtime: json["Runtime"] as String,
      genre: json["Genre"] as String,
      director: json["Director"] as String,
      plot: json["Plot"] as String,
      language: json["Language"] as String,
      country: json["Country"] as String,
      poster: json["Poster"] as String,
      imdbRating: json["imdbRating"] as String,
    );
  }
}