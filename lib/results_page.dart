import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results - Work in Progress...!'),
        backgroundColor: Colors.green.shade700,
      ),
      body: const Center(
        child: Text(
          'Results Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
