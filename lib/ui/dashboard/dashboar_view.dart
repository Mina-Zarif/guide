import 'package:chat/ui/dashboard/reports_view_screen.dart';
import 'package:flutter/material.dart';

import 'dashboard_users_view.dart';
import 'feedback_dashboard_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SectionView(title: 'Users View', icon: Icons.person),
            SectionView(title: 'Drivers View', icon: Icons.directions_car),
            SectionView(title: 'Custom Services', icon: Icons.build),
            SectionView(title: 'Reports', icon: Icons.bar_chart),
            SectionView(title: 'Feedbacks', icon: Icons.feedback),
          ],
        ),
      ),
    );
  }
}

class SectionView extends StatelessWidget {
  const SectionView({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(16),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        onTap: () => _navigation(context),
      ),
    );
  }

  void _navigation(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          switch (title) {
            case 'Users View':
              return DashboardUsersView(title: title);
            case 'Drivers View':
              return DashboardUsersView(title: title);
            case 'Custom Services':
              return DashboardUsersView(title: title);
            case 'Reports':
              return const ReportsViewScreen();
            case 'Feedbacks':
              return const FeedbackDashboardView();
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
