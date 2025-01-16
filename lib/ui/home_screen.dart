import 'package:flutter/material.dart';

import '../data/entry.dart';
import '../data/entryList.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      body: JournalEntryList(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Journal'),
      ),
    );
  }
}

class JournalEntryList extends StatelessWidget {
  final List<Entry> journalEntries = entries;

  JournalEntryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8),
      children: [
        for (final entry in journalEntries)
          JournalEntry(title: entry.title, onPress: null)
      ],
    );
  }
}

class Journal extends StatelessWidget {
  const Journal({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class JournalEntry extends StatelessWidget {
  final String title;
  final void Function()? onPress;

  const JournalEntry({required this.title, required this.onPress, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Theme.of(context).cardColor,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Text(title),
            Spacer(
              flex: 1,
            ),
            IconButton(onPressed: onPress, icon: Icon(Icons.navigate_next))
          ],
        ),
      ),
    );
  }
}
