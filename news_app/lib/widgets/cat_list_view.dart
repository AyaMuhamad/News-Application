import 'package:flutter/material.dart';
import 'package:news_app/widgets/Category_Card.dart';

import '../Models/cat_model.dart';

class Cat_list_view extends StatelessWidget {
  const Cat_list_view({
    super.key,
  });
 final List<cat_model> itemModel = const [
    // cat_model("assets/sports.avif", "Sports"),
    cat_model("assets/health.avif", "health"),
    cat_model("assets/science.avif", "science"),
    cat_model("assets/health.avif", "health"),
    cat_model("assets/technology.jpeg", "technology"),
    cat_model("assets/health.avif", "health"),
    cat_model("assets/entertaiment.avif", "entertaiment"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemModel.length,
        itemBuilder: (BuildContext context, int index) {
          return cat_card(
            catmodel: itemModel[index],
          );
        },
      ),
    );
  }
}
