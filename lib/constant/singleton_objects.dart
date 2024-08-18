import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopify_flutter/constant/post_repository.dart';

import '../database/add_to_card_database/add_card_list.dart';


class SingletonObjects {
  static PostRepository? postRepository;
  static Isar? isar;

  /// This will create single objects of isar and repository class.
  /// @author Priyanka
  static Future init() async {
    ///Isar db
    final dir = await getApplicationSupportDirectory();
    isar = await Isar.open([AddToCardDBClassSchema], directory: dir.path, inspector: true);
    ///Repository obj
    postRepository ??= PostRepository();
  }
}
