import 'package:travel_app/domain/models/category.dart';

abstract class IHomeFacade {
  Future<List<Category>> getCategories({String token});

  Future<Map<String, dynamic>> getDestinations({String token});
}
