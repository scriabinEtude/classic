import 'package:classic/bloc/composer/register/composer_register_bloc.dart';
import 'package:classic/bloc/composer/register/composer_register_event.dart';
import 'package:classic/bloc/composer/register/composer_register_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/common/util/input_formatter/capitalize_input_formatter.dart';
import 'package:classic/common/util/validator.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/model/music.dart';

class MusicRegisterScreenOld extends StatefulWidget {
  const MusicRegisterScreenOld({
    super.key,
    required this.composerId,
    required this.musicalFormId,
  });

  final String composerId;
  final String musicalFormId;

  static String routeName(String composerId, String musicalFormId) =>
      "/link/register/:$composerId/:$musicalFormId/musicalForm";

  @override
  State<MusicRegisterScreenOld> createState() => _MusicRegisterScreenOldState();
}

class _MusicRegisterScreenOldState extends State<MusicRegisterScreenOld> {
  final _formKey = GlobalKey<FormState>();

  String? title;
  String? subTitle;

  Music get music => Music(
        composerId: widget.composerId,
        musicalFormId: widget.musicalFormId,
        title: title!,
        subTitle: subTitle!,
      );

  onSubmit(BuildContext context) {
    if (_formKey.currentState?.validate() == true) {
      _formKey.currentState?.save();
      BlocProvider.of<ComposerRegisterBloc>(context).add(
          ComposerRegisterEvent.registerMusic(
              widget.composerId, widget.musicalFormId, music));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ComposerRegisterBloc, ComposerRegisterState>(
      listener: (context, state) {
        state.status.whenOrNull(
          success: (code) {
            if (code == CODE_MUSIC_REGISTER_SUCCESS) {}
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('제목 추가'),
          centerTitle: true,
          actions: [_SubmitButton(onSubmit: onSubmit)],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const _ErrorText(),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('주제'),
                    hintText: "Ballade No.1 in G Minor, Op.23",
                  ),
                  validator: (value) => Validator.titleValidator(
                      value, "주제 이름", "Chopin: Ballade No.1 in G Minor, Op.23"),
                  inputFormatters: [CapitalizeInputFormatter()],
                  onSaved: (newValue) => title = newValue!,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('부제'),
                    hintText: "",
                  ),
                  validator: (value) =>
                      Validator.titleValidator(value, "형식 이름", "Rain Drop"),
                  inputFormatters: [CapitalizeInputFormatter()],
                  onSaved: (newValue) => subTitle = newValue!,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ErrorText extends StatelessWidget {
  const _ErrorText();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ComposerRegisterBloc, ComposerRegisterState, Status>(
      selector: (state) => state.status,
      builder: (context, status) {
        if (status is StatusFail) {
          return Text(
            status.message!,
            style: const TextStyle(color: Colors.red),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({required this.onSubmit});
  final void Function(BuildContext) onSubmit;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSubmit(context),
      child: Row(
        children: [
          BlocBuilder<ComposerRegisterBloc, ComposerRegisterState>(
            builder: (context, state) {
              if (state.status is StatusLoading) {
                return const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                );
              }
              return Text(
                '확인',
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              );
            },
          ),
          SizedBox(width: 20.w),
        ],
      ),
    );
  }
}
