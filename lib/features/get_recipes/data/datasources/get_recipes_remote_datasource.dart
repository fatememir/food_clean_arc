import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/error/exception.dart';
import '../models/get_recipes_model.dart';

abstract class GetRecipesRemoteDataSource {

  /// Calls the https://api.spoonacular.com/recipes/random endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<GetRecipesModel> getRecipes();
}

class GetRecipesRemoteDataSourceImpl implements GetRecipesRemoteDataSource {
  final http.Client client;

  GetRecipesRemoteDataSourceImpl({required this.client});


  @override
  Future<GetRecipesModel> getRecipes() =>
      _getRecipesFromUrl('https://api.spoonacular.com/recipes/random');

  Future<GetRecipesModel> _getRecipesFromUrl(String url) async {
    final response = await client.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return GetRecipesModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}