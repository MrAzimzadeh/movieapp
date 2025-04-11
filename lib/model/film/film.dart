class Film {
  int id;
  String title;
  String description;
  String photoUrl;
  double rating;
  String releaseDate;
  List<String> genre;
  String director;
  List<String> actors;

  Film({
    required this.id,
    required this.title,
    required this.description,
    required this.photoUrl,
    required this.rating,
    required this.releaseDate,
    required this.genre,
    required this.director,
    required this.actors,
  });

  /// From  Map
  factory Film.fromMap(Map<String, dynamic> map) {
    return Film(
      id: map['id'],
      title: map['title'],
      description: map['plot'],
      photoUrl: map['poster'],
      rating: map['rating'].toDouble(),
      releaseDate: map['year'].toString(),
      genre: List<String>.from(map['genre']),
      director: map['director'],
      actors: List<String>.from(map['actors']),
    );
  }
}