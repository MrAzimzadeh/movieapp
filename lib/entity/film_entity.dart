class FilmEntity {
  final String title;
  final String description;
  final String imageUrl;
  final String director;
  final List<String> actors;
  final String releaseDate; 


  FilmEntity({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.director,
    required this.actors,
    required this.releaseDate,
  });
  
}