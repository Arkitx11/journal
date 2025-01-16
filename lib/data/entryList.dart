import 'package:journal/data/entry.dart';

var entries = List<Entry>.generate(
    20,
    (int index) => Entry(
        id: index, title: "Hi $index", description: "Heya Amigos $index"));
