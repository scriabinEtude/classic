import 'package:classic/bloc/composer/register/composer_register_bloc.dart';
import 'package:classic/bloc/composer/register/composer_register_event.dart';
import 'package:classic/bloc/composer/register/composer_register_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/model/composer.dart';

class ComposerRegisterScreen extends StatefulWidget {
  const ComposerRegisterScreen({super.key});

  static const String routeName = "/composer/register";

  @override
  State<ComposerRegisterScreen> createState() => _ComposerRegisterScreenState();
}

class _ComposerRegisterScreenState extends State<ComposerRegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  String? name;

  String? fullname;

  String? engName;

  String? engFullname;

  String? korValidator(String? value, String label, String example) {
    if (value == null || value.isEmpty) {
      return "$label을 입력해 주세요. (예: $example)";
    } else if (RegExp(r'[^가-힣 ]').hasMatch(value)) {
      return "한글과 공백만 가능합니다 (자음, 모음 제외)";
    } else {
      return null;
    }
  }

  String? engValidator(String? value, String label, String example) {
    if (value == null || value.isEmpty) {
      return "$label을 입력해 주세요. (예: $example)";
    } else if (RegExp(r'[^a-zA-Z ]').hasMatch(value)) {
      return "영어와 공백만 가능합니다";
    } else {
      return null;
    }
  }

  onSubmit(BuildContext context) {
    if (_formKey.currentState?.validate() == true) {
      _formKey.currentState?.save();
      BlocProvider.of<ComposerRegisterBloc>(context).add(
          ComposerRegisterEvent.register(Composer(
              name: name!,
              fullname: fullname!,
              engName: engName!,
              engFullname: engFullname!,
              createdAt: DateTime.now())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('작곡가 추가'),
        centerTitle: true,
        actions: [_SubmitButton(onSubmit: onSubmit)],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('작곡가 이름 (한글)'),
                  hintText: "쇼팽",
                ),
                validator: (value) => korValidator(value, "작곡가 이름", "쇼팽"),
                onSaved: (newValue) => name = newValue!,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('작곡가 성명 (한글)'),
                  hintText: "프레데릭 프랑수아 쇼팽",
                ),
                validator: (value) =>
                    korValidator(value, "작곡가 성명", "프레데릭 프랑수아 쇼팽"),
                onSaved: (newValue) => fullname = newValue!,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('작곡가 이름 (영어)'),
                  hintText: "Chopin",
                ),
                validator: (value) => engValidator(value, "작곡가 이름", "Chopin"),
                onSaved: (newValue) => engName = newValue!,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('작곡가 성명 (영어)'),
                  hintText: "Frederic Francois Chopin",
                ),
                validator: (value) =>
                    engValidator(value, "작곡가 성명", "Frederic Francois Chopin"),
                onSaved: (newValue) => engFullname = newValue!,
              ),
            ],
          ),
        ),
      ),
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
