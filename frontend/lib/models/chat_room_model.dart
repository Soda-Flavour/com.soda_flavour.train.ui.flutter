import 'package:frontend/models/message_model.dart';
import 'package:frontend/models/user_model.dart';

class ChatRoom {
  final User sender;
  final List<Message> messages;

  ChatRoom({this.sender, this.messages});
}
