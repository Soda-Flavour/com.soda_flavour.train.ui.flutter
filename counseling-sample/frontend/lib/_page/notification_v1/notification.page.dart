import 'package:flutter/material.dart';
import 'package:frontend/_page/notification_v1/components/feed_bubble.comp.dart';
import 'package:frontend/models/data.dart';

import 'package:frontend/utils/constants.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            '알림',
            style: Constants.titleStyle,
          ),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.only(top: 90, left: 5, right: 5),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: Theme.of(context).brightness == Brightness.light
                  ? Constants.lightBGColors
                  : Constants.darkBGColors,
            ),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 90),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 20.0,
                            backgroundImage:
                                NetworkImage(Data.feeds[index].sender.imageUrl),
                          ),
                          FeedBubble(
                            feed: Data.feeds[index],
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: Data.feeds.length,
                ),
              ),
            ],
          )),
    );
  }
}
