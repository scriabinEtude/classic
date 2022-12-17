import 'package:flutter/material.dart';
part 'B.dart';

class A {
  String _member = "member1";
}

class B {
  void main() {
    A a = A();
  }
}
