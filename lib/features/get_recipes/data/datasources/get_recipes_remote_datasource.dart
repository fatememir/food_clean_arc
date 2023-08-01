import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../../core/error/exception.dart';
import '../models/get_recipes_model.dart';

abstract class GetRecipesRemoteDataSource {
  /// Calls the https://api.spoonacular.com/recipes/random endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<List<GetRecipesModel>> getRecipes();
}

@LazySingleton(as: GetRecipesRemoteDataSource)
class GetRecipesRemoteDataSourceImpl implements GetRecipesRemoteDataSource {
  final http.Client client;

  GetRecipesRemoteDataSourceImpl(this.client);

  @override
  Future<List<GetRecipesModel>> getRecipes() => _getRecipesFromUrl(
      'https://api.spoonacular.com/recipes/random?number=12&apiKey=de3648f48f784f5c908dae7019050172');

  Future<List<GetRecipesModel>> _getRecipesFromUrl(String url) async {
    final response = await client.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
    );


    if (response.statusCode == 200) {
      return json
          .decode(response.body)?['recipes']
          .map((e) => GetRecipesModel.fromJson(e))
          .cast<GetRecipesModel>()
          .toList();
    } else {
      throw ServerException();
    }
  }
}
