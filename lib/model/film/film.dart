class Film {
  String title;
  String description;
  String photoUrl;
  double rating;
  String releaseDate; 
  List<String> genre;
  String director;

  Film({
    required this.title,
    required this.description,
    required this.photoUrl,
    required this.rating,
    required this.releaseDate,
    required this.genre,
    required this.director,
  });

  /// From  Map
  factory Film.fromMap(Map<String, dynamic> map) {
    return Film(
      title: map['title'],
      description: map['plot'],
      photoUrl: map['poster'],
      rating: map['rating'].toDouble(),
      releaseDate: map['year'].toString(),
      genre: List<String>.from(map['genre']),
      director: map['director'],
    );
  }

}
