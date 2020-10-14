import 'package:flutter/material.dart';
import 'package:frontend/models/data.dart';
import 'package:frontend/models/message_model.dart';
import 'package:frontend/pages/counseling_chat_room/components/chat_bubble.dart';

class ChatItem extends StatelessWidget {
  final Message message;
  final bool isContinue;

  const ChatItem({Key key, this.message, this.isContinue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMe = message.sender == Data.me;

    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        isMe
            ? Container()
            : isContinue
                ? Container(padding: const EdgeInsets.symmetric(horizontal: 20))
                : CircleAvatar(
                    backgroundImage: NetworkImage(message.sender.imageUrl),
                    radius: 20.0,
                  ),
        ChatBubble(
          isMe: isMe,
          isContinue: isContinue,
          message: message,
        ),
      ],
    );
  }
}
