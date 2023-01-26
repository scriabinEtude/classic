import 'package:classic/common/object/status/status.dart';
import 'package:flutter/material.dart';
import 'package:classic/presentation/color/light_color.dart';

class LoginScreenFilledButton extends StatelessWidget {
  const LoginScreenFilledButton({
    super.key,
    this.enable = true,
    this.status,
    required this.onPressed,
    required this.text,
  });
  final bool enable;
  final Status? status;
  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    bool loading = status != null && status is StatusLoading;

    return Opacity(
      opacity: enable ? 1 : 0.3,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(),
        onPressed: enable && !loading ? onPressed : null,
        child: SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: loading
                ? const SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  )
                : Text(
                    text,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
