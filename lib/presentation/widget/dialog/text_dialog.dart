import 'package:flutter/material.dart';

class TextDialog extends StatelessWidget {
  const TextDialog({
    super.key,
    required this.text,
    this.ok,
    this.cancel,
  });

  final String text;
  final bool? ok;
  final bool? cancel;

  static Future<bool?> show(
    BuildContext context, {
    required String text,
    bool? ok,
    bool? cancel,
  }) {
    return showDialog<bool?>(
        context: context,
        builder: (context) {
          return TextDialog(
            text: text,
            ok: ok,
            cancel: cancel,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (cancel != false)
                  TextButton(
                      onPressed: () => Navigator.pop(context, false),
                      child: const Text('취소')),
                if (ok != false)
                  TextButton(
                      onPressed: () => Navigator.pop(context, true),
                      child: const Text('확인')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
