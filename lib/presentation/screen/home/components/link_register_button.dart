part of '../home_screen.dart';

class _LinkRegisterButton extends StatelessWidget {
  const _LinkRegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.goNamed(LinkRegisterScreen.routeName);
      },
      icon: const Icon(Icons.add_circle_outline),
    );
  }
}
