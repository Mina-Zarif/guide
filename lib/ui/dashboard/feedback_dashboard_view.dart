import 'package:flutter/material.dart';

class FeedbackDashboardView extends StatelessWidget {
  static List<String> feedbackList = [
    'make a feedback',
    'make a feedback',
    'make a feedback'
  ];

  const FeedbackDashboardView({super.key});

  // Replace with actual feedback data
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feedback Dashboard'),
      ),
      body: ListView.builder(
        itemCount: feedbackList.length,
        itemBuilder: (context, index) {
          final feedback = feedbackList[index];
          final userName = 'User $index';
          const userEmail = 'user@gmail.com';

          return ListTile(
            leading: CircleAvatar(
              child: Text(userName[0]),
            ),
            title: Text(feedback),
            subtitle: Text(userName),
            onTap: () {},
          );
        },
      ),
    );
  }
}
