abstract class IHomeFacade {
  Future<Map<String, dynamic>> getCategories({String token});

  Future<Map<String, dynamic>> getDestinations({String token});
}
