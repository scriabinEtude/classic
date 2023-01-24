import 'package:classic/bloc/composer/auto_complete/autocomplete_bloc.dart';
import 'package:classic/bloc/link/link/link_bloc.dart';
import 'package:classic/bloc/link/link/link_event.dart';
import 'package:classic/bloc/link/register/link_register_bloc.dart';
import 'package:classic/bloc/link/register/link_register_event.dart';
import 'package:classic/bloc/link/register/link_register_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/common/util/bloc_util.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/presentation/screen/link/components/add_dialog.dart';
import 'package:classic/presentation/screen/link/components/link_widget.dart';

class LinkRegisterScreen extends StatefulWidget {
  const LinkRegisterScreen({super.key});

  static const String routeName = "/link/register";

  @override
  State<LinkRegisterScreen> createState() => _LinkRegisterScreenState();
}

class _LinkRegisterScreenState extends State<LinkRegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _linkController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _linkController.dispose();
    super.dispose();
  }

  regist(BuildContext context) {
    if (_formKey.currentState?.validate() == true) {
      BlocProvider.of<LinkRegisterBloc>(context).add(LinkRegisterEvent.regist(
        BlocUtil.getUser(context)!.id,
        _linkController.text,
        BlocProvider.of<AutoCompleteBloc>(context).state,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LinkRegisterBloc, LinkRegisterState>(
        listener: (context, state) {
      state.status.whenOrNull(success: (code) {
        if (code == CODE_LINK_REGISTER_SUCCESS) {
          BlocProvider.of<LinkBloc>(context).add(LinkEvent.getLinks());
          context.pop();
        }
      });
    }, builder: (context, state) {
      return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('링크 등록'),
            actions: [
              _Submit(state: state, onTap: () {}),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () => LinkInfoAddDialog.show(context),
            backgroundColor: lightColorTheme.primaryColor,
            child: const Icon(Icons.add),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _ErrorText(state),
                  _LinkPreview(state),
                  _LinkFormField(controller: _linkController),
                  // const ComposerAutoComplete(),
                  // const PlayerAutoComplete(),
                  // const MusicalFormAutoComplete(),
                  // const MusicAutoComplete(),
                  // if (state.showConductorField) const ConductorAutoComplete(),
                ],
              ),
            ),
          ),
        ),
      );
    });
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

class _Submit extends StatelessWidget {
  const _Submit({required this.onTap, required this.state});

  final void Function() onTap;
  final LinkRegisterState state;
  @override
  Widget build(BuildContext context) {
    final status = state.status;

    return InkWell(
      onTap: onTap,
      child: Container(
          // height: 35.h,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          child: Builder(builder: (context) {
            if (status is StatusLoading) {
              return const SizedBox(
                height: 24,
                width: 20,
                child: CircularProgressIndicator(
                  color: Colors.black,
                  strokeWidth: 2.5,
                ),
              );
            } else if (status is StatusFail) {
              return const Icon(
                Icons.priority_high_rounded,
                color: Colors.red,
              );
            } else {
              return const Text('완료');
            }
          })),
    );
  }
}
