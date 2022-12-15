import 'package:cloud_firestore/cloud_firestore.dart';

extension QuerySnapshotExtension on QuerySnapshot<Map<String, dynamic>> {
  List<T> toModels<T>(T Function(Map<String, dynamic> data) toJson) {
    return docs.map((e) => toJson(e.data())).toList();
  }
}
