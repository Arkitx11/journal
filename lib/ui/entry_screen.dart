import 'package:flutter/material.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  String title = "";
  String description = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.check))],
        title: Text(title.isEmpty ? "Untitled" : title),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InputField(
                input: title,
                label: 'Title',
                onInput: (String input) {
                  setState(() {
                    title = input;
                  });
                },
                onClear: () {
                  setState(() {
                    title = "";
                  });
                }),
            SizedBox(
              height: 24,
            ),
            InputField(
                input: description,
                label: 'Description',
                onInput: (String input) {
                  setState(() {
                    description = input;
                  });
                },
                onClear: () {
                  setState(() {
                    description = "";
                  });
                })
          ],
        ),
      ),
    );
  }
}

class InputField extends StatefulWidget {
  final String input;
  final String label;
  final void Function(String) onInput;
  final void Function() onClear;

  const InputField(
      {required this.input,
      required this.label,
      required this.onInput,
      required this.onClear,
      super.key});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        controller: _controller,
        onChanged: widget.onInput,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          suffix:
              IconButton(onPressed: widget.onClear, icon: Icon(Icons.cancel_outlined)),
          label: Text(widget.label),
        ),
      ),
    );
  }
}
