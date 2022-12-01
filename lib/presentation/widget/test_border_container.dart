import 'package:flutter/material.dart';

class TestBorderContainer extends StatelessWidget {
  const TestBorderContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: child,
    );
  }
}
