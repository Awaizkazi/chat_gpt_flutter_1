import 'package:chat_gpt_flutter_1/constants/constants.dart';
import 'package:chat_gpt_flutter_1/services/assets_manager.dart';
import 'package:chat_gpt_flutter_1/widgets/chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final bool isTyping = true;
  late TextEditingController textEditingController;
  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

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
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_rounded, color: Colors.white),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return ChatWidget(
                      msg: chatMessages[index]['msg'].toString(),
                      chatIndex: int.parse(
                          chatMessages[index]['chatIndex'].toString()),
                    );
                  }),
            ),
            // TODO This condiiton for the Three Dot Showing that the response will be getting by the ChatGPT
            if (isTyping) ...[
              SpinKitThreeBounce(
                color: Colors.white,
                size: 18,
              ),
              SizedBox(height: 15),
              //! For the textField Where the user asking the messages
              Material(
                color: cardColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          controller: textEditingController,
                          onSubmitted: (value) {
                            //TODO  Send Message or Asking our Queries
                          },
                          decoration: InputDecoration.collapsed(
                            hintText: 'Send a Message...',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.send, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
