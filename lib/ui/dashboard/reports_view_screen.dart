import 'package:flutter/material.dart';

class ReportsViewScreen extends StatelessWidget {
  const ReportsViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reports'),
      ),
      body: ListView(
        children: [
          _buildReportCard('Sales Report', 'Total sales: \$50,000'),
          _buildReportCard('User Activity', 'Active users: 500'),
          // Add more report cards as needed
        ],
      ),
    );
  }

  Widget _buildReportCard(String title, String description) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 3,
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        onTap: () {
          // Handle tapping on a report (e.g., navigate to detailed report screen)
        },
      ),
    );
  }
}
