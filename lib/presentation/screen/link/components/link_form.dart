part of '../link_register_screen.dart';

class _LinkForm extends StatelessWidget {
  const _LinkForm({
    required this.state,
    required this.controller,
  });

  final LinkRegisterState state;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          _ErrorText(state),
          _LinkPreview(state),
          _LinkFormField(controller: controller),
        ],
      ),
    );
  }
}

class _LinkPreview extends StatelessWidget {
  const _LinkPreview(this.state);

  final LinkRegisterState state;

  @override
  Widget build(BuildContext context) {
    if (state.linkValidation.validate && state.linkValidation.link != null) {
      return LinkWidget(state.linkValidation.link!);
    } else {
      return const SizedBox.shrink();
    }
  }
}

class _LinkFormField extends StatelessWidget {
  const _LinkFormField({
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      child: Focus(
        onFocusChange: (focus) {
          if (!focus && controller.text.isNotEmpty) {
            BlocProvider.of<LinkRegisterBloc>(context)
                .add(LinkRegisterEvent.linkValidate(controller.text));
          }
        },
        child: TextFormField(
          controller: controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "링크",
          ),
          validator: (value) {
            if (value == null || value.isEmpty) return "링크를 입력해주세요.";
            return null;
          },
        ),
      ),
    );
  }
}

class _ErrorText extends StatelessWidget {
  const _ErrorText(this.state);

  final LinkRegisterState state;

  @override
  Widget build(BuildContext context) {
    if (state.status is StatusFail) {
      return Text(
        (state.status as StatusFail).message!,
        style: const TextStyle(color: Colors.red),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
