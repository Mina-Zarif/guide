import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/message.dart';
import '../provider/user_provider.dart';

class MessageWidget extends StatelessWidget {
  Message message;

  MessageWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<UserProvider>(context);
    return provider.user?.id == message.senderId
        ? SentMessage(message: message)
        : RecieveMessage(message: message);
  }
}

class SentMessage extends StatelessWidget {
  Message message;

  SentMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12))),
          child: Text(message.content, style: const TextStyle(color: Colors.white)),
        ),
        Text(
          message.dateTime.toString(),
          style: const TextStyle(color: Colors.black),
        )
      ],
    );
  }
}

class RecieveMessage extends StatelessWidget {
  Message message;

  RecieveMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          message.dateTime.toString(),
          style: const TextStyle(color: Colors.black),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
          child: Text(message.content, style: const TextStyle(color: Colors.black)),
        ),
      ],
    );
  }
}
