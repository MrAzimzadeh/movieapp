class CategoryEntity {
  final String id;
  final String name;
  final String description;
  final String director;
  final String actors;

  CategoryEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.director,
    required this.actors,
  });

  @override
  String toString() {
    return 'CategoryEntity{id: $id, name: $name, description: $description, director: $director, actors: $actors}'; 
  }
  
}