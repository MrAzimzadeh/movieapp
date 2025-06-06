class CategoryEntity {
  final String id;
  final String name;
  final String description;

  CategoryEntity({
    required this.id,
    required this.name,
    required this.description,
  });

  @override
  String toString() {
    return 'CategoryEntity{id: $id, name: $name, description: $description}';
  }
  
}