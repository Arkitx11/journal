import 'package:flutter/material.dart';
import 'package:journal/data/entryList.dart';

class RecordScreen extends StatelessWidget {
  final title = entries.first.title;
  final description = entries.first.description;

  RecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SizedBox(width: 336, child: Text(description)),
      ),
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.delete))],
        title: Text(title),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
    );
  }
}
