import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_bloc.dart';
import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_event.dart';
import 'package:classic/bloc/composer/register/composer_register_bloc.dart';
import 'package:classic/bloc/composer/register/composer_register_event.dart';
import 'package:classic/bloc/composer/register/composer_register_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/common/util/input_formatter/capitalize_input_formatter.dart';
import 'package:classic/common/util/validator.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/model/musical_form.dart';

class MusicalFormRegisterScreen extends StatefulWidget {
  const MusicalFormRegisterScreen({
    super.key,
    required this.composerId,
  });

  static String routeName(String composerId) =>
      "/link/register/composer/:$composerId/musicalform";
  final String composerId;

  @override
  State<MusicalFormRegisterScreen> createState() =>
      _MusicalFormRegisterScreenState();
}

class _MusicalFormRegisterScreenState extends State<MusicalFormRegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  String? name;
  String? engName;

  MusicalForm get musicalform => MusicalForm(
        name: name!,
        engName: engName!,
      );

  onSubmit(BuildContext context) {
    if (_formKey.currentState?.validate() == true) {
      _formKey.currentState?.save();
      BlocProvider.of<ComposerRegisterBloc>(context).add(
          ComposerRegisterEvent.registerMusicalForm(
              widget.composerId, musicalform));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ComposerRegisterBloc, ComposerRegisterState>(
      listener: (context, state) {
        state.status.whenOrNull(
          success: (code) {
            if (code == CODE_MUSICAL_FORM_REGISTER_SUCCESS) {
              BlocProvider.of<ComposerAutoCompleteBloc>(context).add(
                  ComposerAutoCompleteEvent.updateMusicalForm(
                      widget.composerId, musicalform));
              context.pop();
            }
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('음악 형식 추가'),
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
                    label: Text('형식 이름 (한글)'),
                    hintText: "소나타",
                  ),
                  validator: (value) =>
                      Validator.korValidator(value, "형식 이름", "소나타"),
                  onSaved: (newValue) => name = newValue!,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('형식 이름 (영어)'),
                    hintText: "Sonata",
                  ),
                  validator: (value) =>
                      Validator.engValidator(value, "형식 이름", "Sonata"),
                  inputFormatters: [CapitalizeInputFormatter()],
                  onSaved: (newValue) => engName = newValue!,
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
