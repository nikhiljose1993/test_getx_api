import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:test_getx_api/models/Recipes.dart';
import 'package:test_getx_api/models/RecipesMainResponse.dart';

class ApiService {
  Future<List<Recipes>?> fetchRecipes() async {
    final apiResponse = await http.get(
      Uri.parse('https://dummyjson.com/recipes'),
    );
    final responseJson = jsonDecode(apiResponse.body);
    final res = RecipesMainResponse.fromJson(responseJson);
    final List<Recipes>? recipes = res.recipes;
    return recipes;
  }
}
