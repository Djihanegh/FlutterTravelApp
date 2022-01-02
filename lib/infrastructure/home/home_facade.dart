import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_app/domain/home/i_home_facade.dart';
import 'package:travel_app/domain/models/category.dart';
import 'package:travel_app/infrastructure/services/firestore_paths.dart';

class HomeFacade implements IHomeFacade {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<List<Category>> getCategories({String? token}) async {
    // final data =  _firestore.collection(FirestorePath.categories()).get().then((value) => Category.fromJson(value.));
   QuerySnapshot<Map<String,dynamic>> querySnapshot =
        await _firestore.collection(FirestorePath.categories()).get();

  List<Category> categories = querySnapshot.docs.map((e) => Category.fromJson(e.data())).toList();


    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> getDestinations({String? token}) {
    // TODO: implement getDestinations
    throw UnimplementedError();
  }
}
