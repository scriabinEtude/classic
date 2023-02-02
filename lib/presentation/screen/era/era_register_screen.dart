import 'package:classic/bloc/era/era_bloc.dart';
import 'package:classic/bloc/era/era_event.dart';
import 'package:classic/bloc/era/era_state.dart';
import 'package:classic/bloc/user/user_bloc.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/common/util/string_util.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/model/era.dart';
import 'package:classic/data/model/user.dart';
import 'package:classic/presentation/widget/form_field/components/app_text_form_field_years.dart';
import 'package:classic/presentation/widget/snackbar/app_snack_bar.dart';
import 'package:classic/presentation/widget/form_field/components/app_text_form_field_eng.dart';
import 'package:classic/presentation/widget/form_field/components/app_text_form_field_kor.dart';
import 'package:classic/presentation/widget/dialog/text_dialog.dart';

class EraRegisterScreen extends StatefulWidget {
  const EraRegisterScreen({
    super.key,
    required this.name,
  });

  final String name;
  static const String routeName = "eraRegist";

  static route(BuildContext context, String name) {
    context.pushNamed(routeName, params: {'name': name});
  }

  @override
  State<EraRegisterScreen> createState() => _EraRegisterScreenState();
}

class _EraRegisterScreenState extends State<EraRegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  late final User user = BlocProvider.of<UserBloc>(context).user!;
  final EraBloc bloc = EraBloc();

  String? title;
  String? kor;
  int? start;
  int? end;

  Future<bool> _showEmptyDeathDialog() async =>
      true ==
      await TextDialog.show(
        context,
        text: '시대 끝 년도가 입력되지 않았습니다.\n입력을 완료하시겠습니까?',
      );

  submit() async {
    if (_formKey.currentState?.validate() == true) {
      _formKey.currentState!.save();

      bool confirm = (end == null) ? await _showEmptyDeathDialog() : true;

      if (confirm) {
        bloc.add(EraEvent.register(Era(
          title: title!,
          kor: kor!,
          start: start!,
          end: end,
          user: user,
        )));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EraBloc, EraState>(
      bloc: bloc,
      listener: (context, state) {
        state.status.whenOrNull(
          success: (code) {
            if (code == CODE_ERA_REGISTER_SUCCESS) {
              ScaffoldMessenger.of(context).showSnackBar(
                AppSnackBar(text: '등록이 완료되었습니다.'),
              );
              context.pop();
              context.pop();
            }
          },
        );
      },
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('시대 등록'),
            actions: [
              TextButton(onPressed: submit, child: const Text('완료')),
            ],
          ),
          body: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: ListView(
                children: [
                  const SizedBox(height: 16),
                  AppTextFormFieldKor(
                    icon: const Icon(Icons.menu_book_outlined),
                    initialValue: widget.name,
                    onSaved: (value) => kor = value,
                  ),
                  AppTextFormFieldEng(
                    initialValue: widget.name,
                    onSaved: (value) => title = value,
                  ),
                  const SizedBox(height: 32),
                  AppTextFormFieldYears(
                    icon: const Icon(Icons.calendar_month_outlined),
                    startTitle: '시작',
                    startOnSaved: (value) => start = value?.toInt,
                    endTitle: "끝",
                    endOnSaved: (value) => end = value?.toInt,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
