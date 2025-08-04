// inputText.dart
import 'package:flutter/material.dart';
import 'outputText.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const InputText(),
    );
  }
}

class InputText extends StatefulWidget {
  const InputText({super.key});

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  final TextEditingController _controller = TextEditingController();

  void _submitText() {
    final input = _controller.text;
    if (input.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OutputText(value: input),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Text')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'Enter some text'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitText,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
