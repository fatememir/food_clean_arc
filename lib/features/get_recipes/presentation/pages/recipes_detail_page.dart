import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/recipes_detail_screen_model.dart';

class RecipesDetailPage extends StatelessWidget {
  RecipesDetailScreenModel recipesDetailScreenModel;

  RecipesDetailPage({super.key, required this.recipesDetailScreenModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: Hero(
                tag: 'FoodImage${recipesDetailScreenModel.index}',
                child: CachedNetworkImage(
                    imageBuilder: (context, imageProvider) => Container(
                          height: MediaQuery.of(context).size.height / 8,
                          decoration: BoxDecoration(
                            // shape: BoxShape.circle,
                            image: DecorationImage(
                                image: imageProvider, fit: BoxFit.cover),
                          ),
                        ),
                    placeholder: (context, url) => Container(
                          color: Colors.grey[200],
                        ),
                    imageUrl:
                        recipesDetailScreenModel.recipesInformation.image),
              ))
        ],
      ),
    );
  }
}
