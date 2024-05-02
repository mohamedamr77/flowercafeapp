import 'item_model.dart';

class CategoryDetailsModel{
  String title;
  List<ItemModel> items;
  CategoryDetailsModel(
  {
    required this.title,
    required this.items
}
      );
}