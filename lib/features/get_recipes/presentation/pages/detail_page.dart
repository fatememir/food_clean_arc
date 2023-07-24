
import 'package:flutter/material.dart';

import '../../domain/entities/recipes_information.dart';

class DetailPage extends StatelessWidget{
  final RecipesInformation recipesInformation;

  const DetailPage({super.key, required this.recipesInformation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Hero(
          tag: 'FoodImage', child: Image.asset(recipesInformation.image),)
      ],),
    );
  }
  
}