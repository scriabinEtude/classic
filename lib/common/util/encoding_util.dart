import 'dart:convert';

import 'package:crypto/crypto.dart';

class EncodingUtil {
  static String plainToBase64(String plain) {
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    return stringToBase64.encode(plain);
  }

  static String passwordEncode(String password) {
    final bytes = utf8.encode(password);
    return sha256.convert(bytes).toString();
  }
}
