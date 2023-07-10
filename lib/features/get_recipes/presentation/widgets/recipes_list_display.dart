import 'package:flutter/material.dart';

import '../../domain/entities/recipes_information.dart';

class RecipesListDisplay extends StatelessWidget {
  final List<RecipesInformation> recipesInformationList;

  const RecipesListDisplay({
    Key? key,
    required this.recipesInformationList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
          itemCount: recipesInformationList.length,
          itemBuilder: (BuildContext context, int index) {
            return Text(recipesInformationList[index].title);
          }
      );
  }
}