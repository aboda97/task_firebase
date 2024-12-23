import 'package:firebase_proj/domain/item_entity.dart';
import 'package:riverpod/riverpod.dart';

class ItemRepository {
  Future<List<ItemModel>> fetchItems() async {
    return [
      ItemModel(id: '1', title: 'Item 1'),
      ItemModel(id: '2', title: 'Item 2'),
    ];
  }
}

final itemRepositoryProvider = Provider<ItemRepository>((ref) => ItemRepository());
