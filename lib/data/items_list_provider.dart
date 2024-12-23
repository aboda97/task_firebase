import 'package:firebase_proj/domain/item_model.dart';
import 'package:firebase_proj/presentation/reverpod_provide.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final itemListProvider = FutureProvider<List<ItemModel>>((ref) async {
  final repository = ref.read(itemRepositoryProvider);
  return await repository.fetchItems();
});
