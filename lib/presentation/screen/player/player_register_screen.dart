import 'package:classic/bloc/composer/register/composer_register_bloc.dart';
import 'package:classic/bloc/composer/register/composer_register_event.dart';
import 'package:classic/bloc/composer/register/composer_register_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/common/util/input_formatter/capitalize_input_formatter.dart';
import 'package:classic/common/util/validator.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/model/player.dart';

class PlayerRegisterScreen extends StatefulWidget {
  const PlayerRegisterScreen({super.key});

  static const String routeName = "/link/register/player";

  @override
  State<PlayerRegisterScreen> createState() => _PlayerRegisterScreenState();
}

class _PlayerRegisterScreenState extends State<PlayerRegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  String? name;

  String? fullname;

  String? engName;

  String? engFullname;

  Player get player => Player(
      name: name!,
      fullname: fullname!,
      engName: engName!,
      engFullname: engFullname!,
      createdAt: DateTime.now());

  onSubmit(BuildContext context) {
    if (_formKey.currentState?.validate() == true) {
      _formKey.currentState?.save();
      BlocProvider.of<ComposerRegisterBloc>(context)
          .add(ComposerRegisterEvent.registerPlayer(player));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ComposerRegisterBloc, ComposerRegisterState>(
      listener: (context, state) {
        state.status.whenOrNull(
          success: (code) {
            if (code == CODE_PLAYER_REGISTER_SUCCES) {}
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('연주자 추가'),
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
                    label: Text('연주자 이름 (한글)'),
                    hintText: "트리포노프",
                  ),
                  validator: (value) =>
                      Validator.korValidator(value, "작곡가 이름", "트리포노프"),
                  onSaved: (newValue) => name = newValue!,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('연주자 성명 (한글)'),
                    hintText: "다닐 올레고비치 트리포노프",
                  ),
                  validator: (value) =>
                      Validator.korValidator(value, "연주자 성명", "다닐 올레고비치 트리포노프"),
                  onSaved: (newValue) => fullname = newValue!,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('연주자 이름 (영어)'),
                    hintText: "Trifonov",
                  ),
                  validator: (value) =>
                      Validator.engValidator(value, "연주자 이름", "Trifonov"),
                  inputFormatters: [CapitalizeInputFormatter()],
                  onSaved: (newValue) => engName = newValue!,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('연주자 성명 (영어)'),
                    hintText: "Daniil Olegovich Trifonov",
                  ),
                  validator: (value) => Validator.engValidator(
                      value, "연주자 성명", "Daniil Olegovich Trifonov"),
                  inputFormatters: [CapitalizeInputFormatter()],
                  onSaved: (newValue) => engFullname = newValue!,
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
