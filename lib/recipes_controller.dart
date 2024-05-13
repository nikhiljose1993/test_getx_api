import 'package:get/get.dart';
import 'package:test_getx_api/main.dart';
import 'package:test_getx_api/services/api_service.dart';

import 'models/Recipes.dart';

class RecipesController extends GetxController {
  List<Recipes>? recipes = <Recipes>[].obs;

  fetchRecipesList() async {
    recipes = await getIt<ApiService>().fetchRecipes();
    update();
  }
}
