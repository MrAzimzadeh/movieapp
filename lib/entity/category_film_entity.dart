import 'package:movieapp/entity/category_entity.dart';
import 'package:movieapp/entity/film_entity.dart';

class CategoryFilmEntity {
  final CategoryEntity category;
  final List<FilmEntity> films;

  CategoryFilmEntity({
    required this.category,
    required this.films,
  });
}
