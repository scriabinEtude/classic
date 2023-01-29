import 'package:classic/common/imports.dart';
import 'package:classic/common/util/input_formatter/capitalize_input_formatter.dart';
import 'package:classic/common/util/input_formatter/continue_input_formatter.dart';
import 'package:classic/common/util/input_formatter/eng_only_input_formatter.dart';
import 'package:classic/common/util/input_formatter/kor_only_input_formatter.dart';
import 'package:classic/common/util/input_formatter/max_length_input_formatter.dart';
import 'package:classic/common/util/input_formatter/number_only_input_formatter.dart';
import 'package:classic/data/enum/nation_code.dart';
import 'package:classic/data/enum/person_type.dart';
import 'package:classic/presentation/widget/form_field/app_text_form_field.dart';
import 'package:classic/presentation/widget/form_field/form_text_init_value.dart';
import 'package:classic/presentation/widget/form_field/form_error_text.dart';

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
  String? _personTypeError;

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

  submit() async {
    if (_formKey.currentState?.validate() == true || _personTypeValidate()) {
      bool confirm = "".isEmpty
          ? await _EmptyDeathFieldDialog.show(context) == true
          : true;

      if (confirm) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                AppTextFormField(
                  label: '이름 (한글)',
                  icon: const Icon(Icons.person_outline),
                  initalValue: InitValueKor(widget.name),
                  inputFormatters: [
                    KorOnlyInputFormatter(),
                    ContinueSpaceInputFormatter(),
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "이름을 입력해주세요.";
                    }
                    return null;
                  },
                ),
                AppTextFormField(
                  label: '이름 (영문)',
                  initalValue: InitValueNotKor(widget.name),
                  inputFormatters: [
                    EngOnlyInputFormatter(),
                    ContinueSpaceInputFormatter(),
                    ContinueDashInputFormatter(),
                    CapitalizeInputFormatter(),
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "이름을 입력해주세요.";
                    }
                    return null;
                  },
                ),
                // const SizedBox(height: 50),
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
                              onFieldSubmitted: (value) => onFieldSubmitted,
                              setHeight: false,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "국가를 입력해주세요";
                                } else if (NationCode.searchEqualByKor(value) ==
                                    null) {
                                  return "등록되지 않은 국가입니다.";
                                } else {
                                  return null;
                                }
                              },
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
                                .map((t) =>
                                    DropdownMenuEntry(value: t, label: t.label))
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 185,
                      child: AppTextFormField(
                        label: '출생',
                        icon: const Icon(Icons.cake_outlined),
                        setHeight: false,
                        inputFormatters: [MaxLengthInputFormatter(4)],
                        validator: (value) => (value == null || value.isEmpty)
                            ? "출생 년도를 입력해 주세요."
                            : null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        '~',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant),
                      ),
                    ),
                    SizedBox(
                      width: 145,
                      child: AppTextFormField(
                        label: '사망',
                        iconExist: false,
                        setHeight: false,
                        inputFormatters: [MaxLengthInputFormatter(4)],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _EmptyDeathFieldDialog extends StatelessWidget {
  const _EmptyDeathFieldDialog();

  static Future<bool?> show(BuildContext context) {
    return showDialog<bool?>(
        context: context,
        builder: (context) {
          return const _EmptyDeathFieldDialog();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('사망 년도가 입력되지 않았습니다.\n입력을 완료하시겠습니까?'),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: const Text('취소')),
                TextButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: const Text('확인')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
