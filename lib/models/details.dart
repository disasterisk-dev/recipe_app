mixin Details {
  int _servingSize = 0;
  int _prepTime = 0;
  int _cookingTime = 0;

  Map<String, int> get detailsAsMap => {
        "servings": _servingSize,
        "prepTime": _prepTime,
        "cookingTime": _cookingTime,
      };

  List<Map<String, String>> get detailsAsFormattedList => [
        {"title": "servings", "value": _servingSize.toString()},
        {"title": "prep time", "value": _prepTime.toString()},
        {"title": "cooking time", "value": _cookingTime.toString()},
      ];

  void increase(Detail detail) {
    if (detail == Detail.serve) {
      _servingSize += 1;
    }

    if (detail == Detail.prep) {
      _prepTime += 1;
    }

    if (detail == Detail.cook) {
      _cookingTime += 1;
    }
  }

  void decrease(Detail detail) {
    if (detail == Detail.serve && _servingSize > 0) {
      _servingSize += 1;
    }

    if (detail == Detail.prep && _prepTime > 0) {
      _prepTime += 1;
    }

    if (detail == Detail.cook && _cookingTime > 0) {
      _cookingTime += 1;
    }
  }
}

enum Detail { serve, prep, cook }
