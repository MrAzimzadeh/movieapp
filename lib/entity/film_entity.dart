class FilmEntity {
  final String title;
  final String description;
  final String imageUrl;
  final String releaseDate;
  final String director;
  final List<String> actors;

  FilmEntity({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.releaseDate,
    required this.director,
    required this.actors,
  });
  
}