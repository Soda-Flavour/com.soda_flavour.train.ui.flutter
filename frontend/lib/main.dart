import 'package:flutter/material.dart';
import 'package:frontend/screens/chat_room/chat_room_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counseing',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Container(),
        'chatRoom': (context) => ChatRoomScreen(),
      },
      home: Container(),
    );
  }
}
