
import 'package:isar/isar.dart';

part 'add_card_list.g.dart';

/// Create isar data base table with column name to store selected card product list
/// @author Priyanka
@collection
class AddToCardDBClass {
  Id id = Isar.autoIncrement;

  int? productId;
  String? title;
  String? image;
  int? itemCount;
  String? price;

}
