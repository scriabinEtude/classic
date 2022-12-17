import 'package:classic/common/imports.dart';
import 'package:classic/data/model/link.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

class LinkWidget extends StatelessWidget {
  const LinkWidget(this.link, {Key? key}) : super(key: key);
  final Link link;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      child: Row(
        children: [
          _Thumbnail(link),
          SizedBox(width: 10.w),
          _Title(link.link.snippet.title),
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title(this.title, {Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.w,
      child: Text(
        title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class _Thumbnail extends StatelessWidget {
  const _Thumbnail(this.link, {Key? key}) : super(key: key);
  final Link link;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: 66,
      width: 120,
      fit: BoxFit.fitWidth,
      imageUrl: link.link.snippet.thumbnails.standardThumbnail.url,
      errorWidget: (context, url, error) {
        return const Center(
          child: Icon(Icons.image_not_supported),
        );
      },
      progressIndicatorBuilder: (context, url, progress) {
        return SizedBox(
          height: 90,
          width: 120,
          child: Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.yellow,
            child: const SizedBox(),
          ),
        );
      },
    );
  }
}
