import 'package:chat_gpt_flutter_1/services/assets_manager.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(AssetsManager.openaiLogo),
        ),
        title: Text('ChatGPT'),
      ),
      body: Center(
        child: Image.asset(AssetsManager.openaiLogo),
      ),
    );
  }
}
