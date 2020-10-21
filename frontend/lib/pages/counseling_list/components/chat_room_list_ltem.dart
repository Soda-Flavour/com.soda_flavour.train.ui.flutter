import 'package:flutter/material.dart';
import 'package:frontend/models/chat_room_model.dart';

class ChatRoomListItem extends StatelessWidget {
  final ChatRoom chatRoom;

  ChatRoomListItem({this.chatRoom});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(chatRoom.sender.imageUrl, scale: 1),
            radius: 30.0,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  chatRoom.sender.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.notification_important,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Flexible(
                      child: Text(
                        chatRoom.type,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Text(
            chatRoom.messages.last.time,
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
