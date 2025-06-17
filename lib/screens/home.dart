import 'package:flutter/material.dart';
import 'package:recipe_app/components/corner_button.dart';
import 'package:recipe_app/components/text_widgets.dart';
import 'package:recipe_app/components/recipe_card.dart';
import 'package:recipe_app/screens/profile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TitleText("Recipeat"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => const Profile()));
            },
            icon: const Icon(Icons.person),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: ListView(
              children: [
                for (int i = 0; i < 5; i++)
                  RecipeCard(
                    title: "Recipe #${i + 1}",
                  ),
              ],
            ),
          ),
          CornerButton(
            onPressed: () {
              print("new");
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
