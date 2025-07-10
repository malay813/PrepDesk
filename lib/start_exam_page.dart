import 'package:flutter/material.dart';

class StartExamPage extends StatelessWidget {
  const StartExamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Exam - Work in Progress...!'),
        backgroundColor: Colors.blue.shade700,
      ),
      body: const Center(
        child: Text(
          'Start Exam Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
