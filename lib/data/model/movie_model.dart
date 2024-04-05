class MovieModel {
  final String title;
  final String year;
  final String imdbId;
  final String type;
  final String poster;

  MovieModel({
    required this.title,
    required this.year,
    required this.imdbId,
    required this.type,
    required this.poster,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      title: json["Title"] as String,
      year: json["Year"] as String,
      imdbId: json["imdbID"] as String,
      type: json["Type"] as String,
      poster: json["Poster"] as String,
    );
  }
}