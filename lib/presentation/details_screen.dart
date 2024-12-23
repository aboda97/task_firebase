import 'package:firebase_proj/domain/item_entity.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final ItemModel item;

  const DetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Screen')),
      body: Center(
        child: Text('Item: ${item.title}'),
      ),
    );
  }
}
