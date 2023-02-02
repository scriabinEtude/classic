import 'package:classic/bloc/person/person_bloc.dart';
import 'package:classic/bloc/person/person_state.dart';
import 'package:classic/bloc/person/person_event.dart';
import 'package:classic/bloc/user/user_bloc.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/enum/nation_code.dart';
import 'package:classic/data/enum/person_type.dart';
import 'package:classic/data/model/person.dart';
import 'package:classic/data/model/user.dart';
import 'package:classic/presentation/widget/dialog/text_dialog.dart';
import 'package:classic/presentation/widget/form_field/app_text_form_field.dart';
import 'package:classic/presentation/widget/form_field/form_error_text.dart';
import 'package:classic/presentation/widget/snackbar/app_snack_bar.dart';
import 'package:classic/presentation/widget/form_field/components/app_text_form_field_eng.dart';
import 'package:classic/presentation/widget/form_field/components/app_text_form_field_kor.dart';
import 'package:classic/presentation/widget/form_field/components/app_text_form_field_years.dart';

class PersonRegisterScreen extends StatefulWidget {
  const PersonRegisterScreen({
    super.key,
    required this.name,
  });

  static const routeName = "personRegist";
  final String name;

  static void route(BuildContext context, String name) {
    context.pushNamed(routeName, params: {'name': name});
  }

  @override
  State<PersonRegisterScreen> createState() => _PersonRegisterScreenState();
}

class _PersonRegisterScreenState extends State<PersonRegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _personTypeController = TextEditingController();
  late final User user = BlocProvider.of<UserBloc>(context).user!;
  final PersonBloc bloc = PersonBloc();
  String? _personTypeError;

  String? kor;
  String? name;
  String? nation;
  String? birth;
  String? death;

  bool _personTypeValidate() {
    setState(() {
      _personTypeError = _personTypeValidator();
    });
    if (_personTypeError != null) {
      return false;
    }
    return true;
  }

  String? _personTypeValidator() {
    String text = _personTypeController.text;
    if (text.isEmpty) {
      return "유형을 입력하세요";
    } else if (PersonType.searchEqualByLabel(text) == null) {
      return "등록되지 않은 유형입니다.";
    } else {
      return null;
    }
  }

  Future<bool> _showEmptyDeathDialog() async =>
      true ==
      await TextDialog.show(
        context,
        text: '사망 년도가 입력되지 않았습니다.\n입력을 완료하시겠습니까?',
      );

  submit() async {
    if (_formKey.currentState?.validate() == true && _personTypeValidate()) {
      _formKey.currentState!.save();

      bool confirm = (death == null || death!.isEmpty)
          ? await _showEmptyDeathDialog()
          : true;

      if (confirm) {
        bloc.add(PersonEvent.register(Person(
          name: name!,
          kor: kor!,
          type: _personTypeController.text,
          birth: int.parse(birth!),
          death: death != null && death!.isNotEmpty ? int.parse(death!) : null,
          nation: nation!,
          user: user,
        )));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PersonBloc, PersonState>(
      bloc: bloc,
      listener: (context, state) {
        state.status.whenOrNull(
          success: (code) {
            if (code == CODE_PERSON_REGISTER_SUCCESS) {
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
            title: const Text('인물 / 단체 등록'),
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
                    initialValue: widget.name,
                    onSaved: (value) => kor = value,
                  ),
                  AppTextFormFieldEng(
                    initialValue: widget.name,
                    onSaved: (value) => name = value,
                  ),
                  SizedBox(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Autocomplete(
                          optionsBuilder: (value) =>
                              NationCode.searchByKor(value.text),
                          displayStringForOption: (nation) => nation.kor,
                          fieldViewBuilder: (
                            context,
                            textEditingController,
                            focusNode,
                            onFieldSubmitted,
                          ) {
                            return SizedBox(
                              width: 185,
                              child: AppTextFormField(
                                icon: const Icon(Icons.flag_outlined),
                                label: '국가',
                                controller: textEditingController,
                                focusNode: focusNode,
                                onFieldSubmitted: (value) => nation = value,
                                setHeight: false,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "국가를 입력해주세요";
                                  } else if (NationCode.searchEqualByKor(
                                          value) ==
                                      null) {
                                    return "등록되지 않은 국가입니다.";
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (value) => nation = value,
                              ),
                            );
                          },
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DropdownMenu<PersonType>(
                              controller: _personTypeController,
                              enableSearch: true,
                              label: const Text('유형'),
                              dropdownMenuEntries: PersonType.values
                                  .map((t) => DropdownMenuEntry(
                                      value: t, label: t.label))
                                  .toList(),
                              inputDecorationTheme: const InputDecorationTheme(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 23,
                                  horizontal: 12,
                                ),
                              ),
                            ),
                            FormErrorText(error: _personTypeError),
                          ],
                        ),
                      ],
                    ),
                  ),
                  AppTextFormFieldYears(
                    icon: const Icon(Icons.cake_outlined),
                    startTitle: '출생',
                    startOnSaved: (value) => birth = value,
                    endTitle: "사망",
                    endOnSaved: (value) => death = value,
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
