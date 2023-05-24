import 'package:chat_gpt_flutter_1/services/assets_manager.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(AssetsManager.imagePath),
          ],
        )
      ],
    );
  }
}
