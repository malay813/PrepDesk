import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        backgroundColor: Colors.purple.shade700,
      ),
      body: const Center(
        child: Text(
          'History Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
