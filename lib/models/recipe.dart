import 'package:recipe_app/models/details.dart';

class Recipe with Details {
  Recipe({
    required this.id,
    required this.author,
    required this.name,
    required this.description,
    required this.ingredients,
  });

  final int id;
  final String author;
  final String name;
  final String description;
  final List<String> ingredients;
  bool _isFavourite = false;

  bool get isFavourite => _isFavourite;

  void toogleIsFav() {
    _isFavourite = !_isFavourite;
  }
}
