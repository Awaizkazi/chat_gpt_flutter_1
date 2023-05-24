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
          color: chatIndex == 0 ? scaffoldBackgroundColor : cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                    chatIndex == 0
                        ? AssetsManager.userImage
                        : AssetsManager.botImage,
                    width: 30,
                    height: 30),
                SizedBox(width: 8),
                TextWidget(label: 'Hello here is a msg'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
