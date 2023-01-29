import 'package:collection/collection.dart';

enum PersonType {
  person('인물'),
  orchestra('관현악단'),
  band('그룹');

  final String label;

  const PersonType(this.label);

  static PersonType? searchEqualByLabel(String label) {
    return values.firstWhereOrNull((type) => type.label == label);
  }
}
