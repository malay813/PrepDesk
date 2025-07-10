import 'package:flutter/material.dart';
import 'exam_interface_page.dart';

class ExamInstructionsPage extends StatelessWidget {
  final String examTitle;
  final String examDuration;
  final List<String> rules;

  const ExamInstructionsPage({
    super.key,
    required this.examTitle,
    required this.examDuration,
    required this.rules,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exam Instructions',
        style: TextStyle(
          // fontSize: ,
          fontWeight: FontWeight.bold,
          // letterSpacing: 1.1,
          color: Colors.white,
          )
        ),
        backgroundColor: Colors.blue.shade700,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildExamHeader(),
              const SizedBox(height: 20),
              _buildInstructionsCard(),
              const SizedBox(height: 30),
              _buildStartButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExamHeader() {
    return Card(
      elevation: 3,
      color: Colors.blue.shade50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(examTitle, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue)),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.timer, size: 20, color: Colors.blue),
                const SizedBox(width: 8),
                Text('Duration: $examDuration', style: const TextStyle(fontSize: 16, color: Colors.black)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInstructionsCard() {
    return Card(
      elevation: 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Important Instructions:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Column(
              children: rules.map((rule) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      const Icon(Icons.check, size: 18, color: Colors.blue),
                      const SizedBox(width: 8),
                      Expanded(child: Text(rule, style: const TextStyle(fontSize: 16))),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStartButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ExamInterfacePage(
                examTitle: examTitle,
                examDuration: examDuration,
              ),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade700, // Button color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 50.0),
        ),
        child: const Text(
          'Start Exam',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
