import 'package:classic/common/module/youtube/noembed/noembed.dart';
import 'package:classic/common/object/logger/logger.dart';
import 'package:dio/dio.dart';

class NoEmbedClient {
  final Dio dio = Dio();

  Future<NoEmbed?> getNoEmbed(String url) async {
    try {
      Response res = await dio.get(url);
      return NoEmbed.fromJson(res.data);
    } catch (e) {
      l.e(e);
      return null;
    }
  }

  // singleton
  static final NoEmbedClient _ = NoEmbedClient._internal();

  factory NoEmbedClient() {
    return _;
  }

  NoEmbedClient._internal();
}
