class FirestorePath {
  static String trip(String tripId) => 'trips/$tripId';

  static String trips() => 'trips';

  static String categories() => 'categories';

  static String destinations() => 'destinations';

  static String favorite(String uid, String favoriteId) =>
      'favorites/$uid/trips/$favoriteId';

  static String favorites(String uid) => 'favorites/$uid/trips';
}
