import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TeacherDetailYouTubePlayerComp extends StatelessWidget {
  YoutubePlayerController _youtubePlayerController = YoutubePlayerController(
    initialVideoId: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=uzQ_4Tq4ekw&ab_channel=%EB%A7%88%EC%9D%B8%EB%93%9C%EC%B9%B4%ED%8E%98-%EA%B5%AD%EB%82%B4%EC%9C%A0%EC%9D%BC%EC%8B%AC%EB%A6%AC%EC%83%81%EB%8B%B4%EC%BB%A4%EB%AE%A4%EB%8B%88%ED%8B%B0"),
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        top: 20,
        bottom: 10,
      ),
      child: YoutubePlayer(
        controller: _youtubePlayerController,
        showVideoProgressIndicator: true,
      ),
    );
  }
}
