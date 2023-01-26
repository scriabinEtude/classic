import 'package:classic/bloc/composer/register/composer_register_bloc.dart';
import 'package:classic/bloc/composer/register/composer_register_event.dart';
import 'package:classic/bloc/composer/register/composer_register_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/common/util/input_formatter/capitalize_input_formatter.dart';
import 'package:classic/common/util/validator.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/model/conductor.dart';

class ConductorRegisterScreen extends StatefulWidget {
  const ConductorRegisterScreen({super.key});

  static const String routeName = "/link/register/conductor";

  @override
  State<ConductorRegisterScreen> createState() =>
      _ConductorRegisterScreenState();
}

class _ConductorRegisterScreenState extends State<ConductorRegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  String? name;

  String? fullname;

  String? engName;

  String? engFullname;

  Conductor get conductor => Conductor(
      name: name!,
      fullname: fullname!,
      engName: engName!,
      engFullname: engFullname!,
      createdAt: DateTime.now());

  onSubmit(BuildContext context) {
    if (_formKey.currentState?.validate() == true) {
      _formKey.currentState?.save();
      BlocProvider.of<ComposerRegisterBloc>(context)
          .add(ComposerRegisterEvent.registerConductor(conductor));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ComposerRegisterBloc, ComposerRegisterState>(
      listener: (context, state) {
        state.status.whenOrNull(
          success: (code) {
            if (code == CODE_CONDUCTOR_REGISTER_SUCCES) {}
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('지휘자 추가'),
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
                    label: Text('지휘자 이름 (한글)'),
                    hintText: "정명훈",
                  ),
                  validator: (value) =>
                      Validator.korValidator(value, "작곡가 이름", "정명훈"),
                  onSaved: (newValue) => name = newValue!,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('지휘자 성명 (한글)'),
                    hintText: "정명훈",
                  ),
                  validator: (value) =>
                      Validator.korValidator(value, "지휘자 성명", "정명훈"),
                  onSaved: (newValue) => fullname = newValue!,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('지휘자 이름 (영어)'),
                    hintText: "Myung Whun Chung",
                  ),
                  validator: (value) => Validator.engValidator(
                      value, "지휘자 이름", "Myung Whun Chung"),
                  inputFormatters: [CapitalizeInputFormatter()],
                  onSaved: (newValue) => engName = newValue!,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('지휘자 성명 (영어)'),
                    hintText: "Myung Whun Chung",
                  ),
                  validator: (value) => Validator.engValidator(
                      value, "지휘자 성명", "Myung Whun Chung"),
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
