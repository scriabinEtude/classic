import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/model/link.dart';

abstract class LinkRepository {
  Future<Result<List<Link>>> getLinks();
}
