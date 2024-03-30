import 'package:flutter/material.dart';

class DashboardUsersView extends StatelessWidget {
  const DashboardUsersView({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(height: 0.8),
        itemCount: 5,
        itemBuilder: (context, index) {
          final userName = 'User $index';
          const userEmail = 'user@gmail.com';

          return ListTile(
            leading: CircleAvatar(
              child: Text(userName[0]),
            ),
            title: Text(userName),
            subtitle: const Text(userEmail),
            onTap: () {},
          );
        },
      ),
    );
  }
}