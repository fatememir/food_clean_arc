import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_clean_arc/features/get_recipes/presentation/widgets/watch_button_widget.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/recipes_detail_screen_model.dart';

class RecipesDetailPage extends StatelessWidget {
  final RecipesDetailScreenModel recipesDetailScreenModel;

  const RecipesDetailPage({super.key, required this.recipesDetailScreenModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [_buildImageAppbar(context), _buildBodyContainer(context)],
      ),
    );
  }

  Widget _buildImageAppbar(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: 'FoodImage${recipesDetailScreenModel.index}',
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              CachedNetworkImage(
                  imageBuilder: (context, imageProvider) => Container(
                        height: MediaQuery.of(context).size.height / 3,
                        decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          image: DecorationImage(
                              image: imageProvider, fit: BoxFit.cover),
                        ),
                      ),
                  placeholder: (context, url) => Container(
                        color: Colors.grey[200],
                      ),
                  imageUrl: recipesDetailScreenModel.recipesInformation.image),
              Padding(
                padding: const EdgeInsets.only(top: 32, left: 32),
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(32)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_back_outlined,
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                ),
              )
            ],
          ),
        ),
        const Spacer()
      ],
    );
  }

  Widget _buildBodyContainer(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(32), topLeft: Radius.circular(32))),
      height: MediaQuery.of(context).size.height * 2.2 / 3,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    recipesDetailScreenModel.recipesInformation.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                const Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Text(recipesDetailScreenModel.recipesInformation.summary),
            const Spacer(),
            const WatchButtonWidget()
          ],
        ),
      ),
    );
  }
}
