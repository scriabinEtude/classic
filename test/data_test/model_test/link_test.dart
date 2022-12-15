import 'package:classic/common/module/youtube/model/youtube_videos.dart';
import 'package:classic/common/module/youtube/youtube_api.dart';
import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("link model test", () async {
    YoutubeApi api = YoutubeApi();
    Result<YoutubeVideos> result = await api.getVideo(
        'https://www.youtube.com/watch?v=1JNmz17gnMw&list=RD1JNmz17gnMw&start_radio=1&ab_channel=Polyphia');

    result.whenOrNull(success: (videos) {
      l.dl('link model test', (videos as YoutubeVideos).items.first.toJson());
    });
  });
}
