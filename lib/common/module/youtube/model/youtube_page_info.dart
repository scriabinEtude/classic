import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_page_info.freezed.dart';
part 'youtube_page_info.g.dart';

@freezed
class YoutubePageInfo with _$YoutubePageInfo {
  factory YoutubePageInfo({
    required int totalResults,
    required int resultsPerPage,
  }) = _YoutubePageInfo;

  factory YoutubePageInfo.fromJson(Map<String, dynamic> json) =>
      _$YoutubePageInfoFromJson(json);
}
