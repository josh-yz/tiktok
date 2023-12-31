import 'package:flutter/material.dart';
import 'package:tiktok/domain/entities/video_post.dart';
import 'package:tiktok/presentation/widgets/shared/video_buttons.dart';
import 'package:tiktok/presentation/widgets/video/fullScreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({Key? key, required this.videos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            SizedBox.expand(
                child: FullScreenPlayer(
                    videoUrl: videoPost.caption, caption: videoPost.videoUrl)),
            Positioned(
                bottom: 40, right: 20, child: VideoButtons(video: videoPost))
          ],
        );
      },
    );
  }
}
