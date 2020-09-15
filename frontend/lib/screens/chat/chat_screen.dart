import 'package:flutter/material.dart';
import 'package:frontend/models/data.dart';
import 'package:frontend/screens/chat/chat_room_list_ltem.dart';
import 'package:frontend/utils/constants.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        elevation: 0.0,
        title: Text(
          'Chat',
          style: Constants.titleStyle,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_circle_outline),
            color: Colors.white,
            iconSize: 30.0,
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 90),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: Theme.of(context).brightness == Brightness.light
                ? Constants.lightBGColors
                : Constants.darkBGColors,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  autofocus: false,
                  onChanged: (v) {},
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: Constants.border,
                    disabledBorder: Constants.border,
                    border: Constants.border,
                    errorBorder: Constants.border,
                    focusedErrorBorder: Constants.border,
                    focusedBorder: Constants.border,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 80),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/chatRoom',
                              arguments: Data.chatRooms[index]);
                        },
                        child: ChatRoomListItem(
                          chatRoom: Data.chatRooms[index],
                        ));
                  },
                  itemCount: Data.chatRooms.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
