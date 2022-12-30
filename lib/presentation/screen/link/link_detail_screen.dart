import 'package:classic/common/imports.dart';
import 'package:classic/data/model/link.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LinkDetailScreen extends StatefulWidget {
  const LinkDetailScreen({
    super.key,
    required this.link,
  });

  final Link link;

  static const String routeName = "/link/detail";

  @override
  State<LinkDetailScreen> createState() => _LinkDetailScreenState();
}

class _LinkDetailScreenState extends State<LinkDetailScreen> {
  late YoutubePlayerController youtubeController = YoutubePlayerController(
    initialVideoId: widget.link.link.id,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );

  bool fullscreen = false;

  Future<bool> _onWillPop() async {
    if (youtubeController.value.isFullScreen) {
      youtubeController.toggleFullScreenMode();
      return false;
    } else {
      Navigator.pop(context);
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
          appBar: fullscreen
              ? null
              : AppBar(
                  title: Text(widget.link.link.snippet.title),
                ),
          body: SingleChildScrollView(
            child: YoutubePlayerBuilder(
              player: YoutubePlayer(
                controller: youtubeController,
                showVideoProgressIndicator: true,
              ),
              builder: (context, player) {
                return Column(
                  children: [
                    SizedBox(
                      height: fullscreen
                          ? MediaQuery.of(context).size.height
                          : null,
                      child: player,
                    ),
                  ],
                );
              },
              onEnterFullScreen: () {
                setState(() {
                  fullscreen = true;
                });
              },
              onExitFullScreen: () {
                setState(() {
                  fullscreen = false;
                });
              },
            ),
          )),
    );
  }
}
