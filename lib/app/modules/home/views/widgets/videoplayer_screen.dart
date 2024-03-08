import 'package:flutter/material.dart';
import 'package:luxe_desires/app/widgets/video_container.dart';

class VideoPlayerScreen extends StatelessWidget {
  final String url;
  const VideoPlayerScreen({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      // extendBodyBehindAppBar: true,
      body: VideoContainer(
        videoUrl: url,
      ),
    );
  }
}
