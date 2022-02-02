import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import './movies_Screen.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const VideoPlayerScreen();
  }
}

class VideoPlayerScreen extends StatelessWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Flutter Video Player Demo'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          VideoHome(
            videoPlayerController: VideoPlayerController.asset(
              'assets/video/movievideo.mp4',
            ),
            looping: false,
            autoplay: false,
          ),
          VideoHome(
            videoPlayerController: VideoPlayerController.asset(
              'assets/video/movievideo.mp4',
            ),
            looping: false,
            autoplay: false,
          ),
          VideoHome(
            videoPlayerController: VideoPlayerController.asset(
              'assets/video/movievideo.mp4',
            ),
            autoplay: false,
            looping: false,
          ),
          VideoHome(
            videoPlayerController: VideoPlayerController.asset(
              'assets/video/movievideo.mp4',
            ),
            autoplay: false,
            looping: false,
          ),
          VideoHome(
            videoPlayerController: VideoPlayerController.asset(
              'assets/video/v1.mp4',
            ),
            autoplay: true,
            looping: true,
          ),
          VideoHome(
            videoPlayerController: VideoPlayerController.network(
                'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'),
            looping: false,
            autoplay: true,
          )
        ],
      ),
    );
  }
}
