import 'package:chat_gpt_flutter_1/constants/constants.dart';
import 'package:chat_gpt_flutter_1/services/assets_manager.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(AssetsManager.userImage, width: 30, height: 30),
                Text('Here is a msg')
              ],
            ),
          ),
        )
      ],
    );
  }
}
