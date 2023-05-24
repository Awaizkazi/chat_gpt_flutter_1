import 'package:chat_gpt_flutter_1/constants/constants.dart';
import 'package:chat_gpt_flutter_1/services/assets_manager.dart';
import 'package:flutter/material.dart';

import 'text_widget.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key, required this.msg, required this.chatIndex});
  final String msg;
  final int chatIndex;

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
                SizedBox(width: 8),
                TextWidget(label: 'Hello here is a msg'),
              ],
            ),
          ),
        )
      ],
    );
  }
}
