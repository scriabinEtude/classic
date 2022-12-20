import 'package:classic/bloc/link/link/link_bloc.dart';
import 'package:classic/bloc/link/link/link_event.dart';
import 'package:classic/bloc/link/register/link_register_bloc.dart';
import 'package:classic/bloc/link/register/link_register_event.dart';
import 'package:classic/bloc/link/register/link_register_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/common/util/bloc_util.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/presentation/screen/link/components/composer_autocomplete.dart';
import 'package:classic/presentation/screen/link/components/link_widget.dart';
import 'package:classic/presentation/screen/link/components/musical_form_autocomplete.dart';

class LinkRegisterScreen extends StatelessWidget {
  LinkRegisterScreen({super.key});

  static const String routeName = "/link/register";

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _linkController = TextEditingController();

  regist(BuildContext context) {
    if (_formKey.currentState?.validate() == true) {
      BlocProvider.of<LinkRegisterBloc>(context).add(LinkRegisterEvent.regist(
        BlocUtil.getUser(context)!.id,
        _linkController.text,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LinkRegisterBloc, LinkRegisterState>(
      listener: (context, state) {
        state.status.whenOrNull(success: (code) {
          if (code == CODE_LINK_REGISTER_SUCCESS) {
            BlocProvider.of<LinkBloc>(context).add(LinkEvent.getLinks());
            context.pop();
          }
        });
      },
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('링크 등록'),
          ),
          floatingActionButton: _FloatingButton(
            onTap: () => regist(context),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const _ErrorText(),
                  const _LinkPreview(),
                  _LinkFormField(controller: _linkController),
                  const ComposerAutoComplete(),
                  const MusicalFormAutoComplete(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LinkPreview extends StatelessWidget {
  const _LinkPreview();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LinkRegisterBloc, LinkRegisterState, LinkValidation>(
      selector: (state) => state.linkValidation,
      builder: (context, linkValidation) {
        if (linkValidation.validate && linkValidation.link != null) {
          return LinkWidget(linkValidation.link!);
        } else {
          return const SizedBox.shrink();
        }
      },
    );
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
            label: Text('링크'),
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
  const _ErrorText();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LinkRegisterBloc, LinkRegisterState>(
      builder: (context, state) {
        if (state.status is StatusFail) {
          return Text(
            (state.status as StatusFail).message!,
            style: const TextStyle(color: Colors.red),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

class _FloatingButton extends StatelessWidget {
  const _FloatingButton({required this.onTap});

  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          // height: 35.h,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: lightColorTheme.primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: BlocSelector<LinkRegisterBloc, LinkRegisterState, Status>(
            selector: (state) => state.status,
            builder: (context, status) {
              if (status is StatusLoading) {
                return const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2.5,
                  ),
                );
              } else if (status is StatusFail) {
                return const Icon(
                  Icons.priority_high_rounded,
                  color: Colors.white,
                );
              } else {
                return const Icon(
                  Icons.check,
                  color: Colors.white,
                );
              }
            },
          )),
    );
  }
}
