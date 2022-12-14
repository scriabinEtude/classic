import 'package:classic/bloc/composer/auto_complete/autocomplete_bloc.dart';
import 'package:classic/bloc/composer/auto_complete/autocomplete_event.dart';
import 'package:classic/bloc/composer/register/composer_register_bloc.dart';
import 'package:classic/bloc/composer/register/composer_register_event.dart';
import 'package:classic/bloc/composer/register/composer_register_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/common/util/input_formatter/capitalize_input_formatter.dart';
import 'package:classic/common/util/validator.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/model/music.dart';

class MusicRegisterScreen extends StatefulWidget {
  const MusicRegisterScreen({
    super.key,
    required this.composerId,
    required this.musicalFormId,
  });

  final String composerId;
  final String musicalFormId;

  static String routeName(String composerId, String musicalFormId) =>
      "/link/register/:$composerId/:$musicalFormId/musicalForm";

  @override
  State<MusicRegisterScreen> createState() => _MusicRegisterScreenState();
}

class _MusicRegisterScreenState extends State<MusicRegisterScreen> {
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
            if (code == CODE_MUSIC_REGISTER_SUCCESS) {
              BlocProvider.of<AutoCompleteBloc>(context).add(
                  AutoCompleteEvent.updateMusic(
                      widget.composerId, widget.musicalFormId, music));
              context.pop();
            }
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('?????? ??????'),
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
                    label: Text('??????'),
                    hintText: "Ballade No.1 in G Minor, Op.23",
                  ),
                  validator: (value) => Validator.titleValidator(
                      value, "?????? ??????", "Chopin: Ballade No.1 in G Minor, Op.23"),
                  inputFormatters: [CapitalizeInputFormatter()],
                  onSaved: (newValue) => title = newValue!,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('??????'),
                    hintText: "",
                  ),
                  validator: (value) =>
                      Validator.titleValidator(value, "?????? ??????", "Rain Drop"),
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
                '??????',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: lightColorTheme.primaryColor,
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
