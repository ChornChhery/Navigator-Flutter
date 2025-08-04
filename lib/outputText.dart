import 'package:flutter/material.dart';

class OutputText extends StatelessWidget {
  final String value;

  const OutputText({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Output Text')),
      body: Center(
        child: Text(
          value,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
