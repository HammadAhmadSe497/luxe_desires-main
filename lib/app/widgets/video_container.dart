import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/contants.dart';
import 'package:video_player/video_player.dart';

class VideoContainer extends StatefulWidget {
  final File? file;
  final String? videoUrl;
  final double? aspectRatio;
  final bool allowFullScreen;
  const VideoContainer(
      {this.file,
      this.videoUrl,
      this.aspectRatio,
      this.allowFullScreen = true,
      super.key});
  @override
  State<VideoContainer> createState() => _VideoareaState();
}

class _VideoareaState extends State<VideoContainer> {
  VideoPlayerController? _controller;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _controller = _getController();
    if (_controller != null) {
      _controller!
        ..addListener(() => setState(() {}))
        // ..setLooping(true)
        ..initialize().then((value) {
          _createChewieController();
        });
    }
  }

  VideoPlayerController? _getController() {
    // if (widget.assetVideo != null) {
    //   return VideoPlayerController.asset(widget.assetVideo.toString());
    // }
    if (widget.file != null) {
      return VideoPlayerController.file(File(widget.file!.path));
    }
    if (widget.videoUrl != null) {
      return VideoPlayerController.networkUrl(
          Uri.parse(widget.videoUrl.toString()));
    }
    return null;
  }

  void _createChewieController() {
    _chewieController = ChewieController(
      videoPlayerController: _controller!,
      // looping: false,
      autoPlay: true,
      showControls: true,
      autoInitialize: true,
      allowFullScreen: widget.allowFullScreen,
      deviceOrientationsAfterFullScreen: [DeviceOrientation.portraitUp],
      deviceOrientationsOnEnterFullScreen: [
        DeviceOrientation.portraitUp,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight
      ],
      aspectRatio: widget.aspectRatio,

      placeholder: Container(
        color: Colors.transparent,
      ),
      materialProgressColors: ChewieProgressColors(
        handleColor: DarkThemeColor.primary,
        playedColor: DarkThemeColor.primary.withOpacity(0.8),
        bufferedColor: DarkThemeColor.primary.withOpacity(0.4),
      ),

      cupertinoProgressColors: ChewieProgressColors(
        handleColor: DarkThemeColor.primary,
        playedColor: DarkThemeColor.primary.withOpacity(0.6),
        bufferedColor: DarkThemeColor.primary.withOpacity(0.4),
      ),
      // hideControlsTimer: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller!.value.isInitialized && _chewieController != null
        ? Chewie(controller: _chewieController!)
        : Center(child: loader);
  }
}
