import 'package:firebase_proj/data/item_repo.dart';
import 'package:firebase_proj/domain/item_entity.dart';
import 'package:riverpod/riverpod.dart';

final itemRepositoryProvider = Provider<ItemRepository>((ref) => ItemRepository());
final itemListProvider = FutureProvider<List<ItemModel>>((ref) async {
  final repository = ref.watch(itemRepositoryProvider);
  return await repository.fetchItems();
});