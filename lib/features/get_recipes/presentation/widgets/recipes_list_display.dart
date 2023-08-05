import 'package:flutter/material.dart';
import 'package:food_clean_arc/features/get_recipes/presentation/widgets/ready_minute_widget.dart';
import 'package:food_clean_arc/features/get_recipes/presentation/widgets/watch_button_widget.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/recipes_detail_screen_model.dart';
import '../../domain/entities/recipes_information.dart';
import 'package:cached_network_image/cached_network_image.dart';

class RecipesListDisplay extends StatelessWidget {
  final List<RecipesInformation> recipesInformationList;

  const RecipesListDisplay({
    Key? key,
    required this.recipesInformationList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1 / 1.5),
          itemCount: recipesInformationList.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                GoRouter.of(context).push('/recipesDetail',
                    extra: RecipesDetailScreenModel(
                        recipesInformation: recipesInformationList[index],
                        index: index));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    _buildFoodImage(index),
                    const SizedBox(
                      height: 16,
                    ),
                    _buildFoodTitle(index),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const WatchButtonWidget(),
                          ReadyMinute(
                              readyMinutes:
                                  recipesInformationList[index].readyInMinutes)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget _buildFoodImage(int index) {
    return Hero(
      tag: "FoodImage$index",
      child: CachedNetworkImage(
        imageBuilder: (context, imageProvider) => Container(
          height: MediaQuery.of(context).size.height / 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          ),
        ),
        placeholder: (context, url) => Container(
          color: Colors.grey[200],
        ),
        imageUrl: recipesInformationList[index].image,
      ),
    );
  }

  Widget _buildFoodTitle(int index) {
    return Text(
      recipesInformationList[index].title,
      textAlign: TextAlign.center,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
