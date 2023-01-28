import 'package:classic/common/imports.dart';
import 'package:classic/common/util/input_formatter/capitalize_input_formatter.dart';
import 'package:classic/common/util/input_formatter/continue_input_formatter.dart';
import 'package:classic/common/util/input_formatter/eng_only_input_formatter.dart';
import 'package:classic/common/util/input_formatter/kor_only_input_formatter.dart';
import 'package:classic/data/enum/nation_code.dart';
import 'package:classic/data/enum/person_type.dart';
import 'package:classic/presentation/widget/form_field/app_text_form_field.dart';
import 'package:classic/presentation/widget/form_field/form_text_init_value.dart';
import 'package:classic/presentation/widget/test_border_container.dart';

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
  String birthYearChoice = "년도";
  String diedYearChoice = "년도";

  void choiceBirthYear(String? value) {
    if (value == null) return;
    setState(() {
      birthYearChoice = value;
    });
  }

  void choiceDiedYear(String? value) {
    if (value == null) return;
    setState(() {
      diedYearChoice = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('인물 / 단체 등록'),
        ),
        body: Form(
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
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      _NationField(),
                      _PersonTypeField(),
                    ],
                  ),
                ),
                _YearField(
                  groupValue: birthYearChoice,
                  prefix: "출생",
                  onChange: choiceBirthYear,
                ),
                _YearField(
                  groupValue: diedYearChoice,
                  prefix: "사망",
                  onChange: choiceDiedYear,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PersonTypeField extends StatelessWidget {
  const _PersonTypeField();

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      enableSearch: true,
      label: const Text('유형'),
      dropdownMenuEntries: PersonType.values
          .map((t) => DropdownMenuEntry(value: t.name, label: t.label))
          .toList(),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(vertical: 23, horizontal: 12),
      ),
    );
  }
}

class _NationField extends StatelessWidget {
  const _NationField();

  @override
  Widget build(BuildContext context) {
    return Autocomplete(
      optionsBuilder: (value) => NationCode.searchByKor(value.text),
      displayStringForOption: (nation) => nation.kor,
      fieldViewBuilder: (
        context,
        textEditingController,
        focusNode,
        onFieldSubmitted,
      ) {
        return SizedBox(
          width: 200,
          child: AppTextFormField(
            label: '국가',
            controller: textEditingController,
            focusNode: focusNode,
            onFieldSubmitted: (value) => onFieldSubmitted,
            autoComplete: true,
          ),
        );
      },
    );
  }
}

class _YearField extends StatelessWidget {
  const _YearField({
    Key? key,
    required this.prefix,
    required this.groupValue,
    required this.onChange,
  }) : super(key: key);

  final String prefix;
  final String groupValue;
  final void Function(String? value) onChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox(width: 30),
            RadioMenuButton(
              value: '년도',
              groupValue: groupValue,
              onChanged: onChange,
              child: const Text('년도'),
            ),
            RadioMenuButton(
              value: '년대',
              groupValue: groupValue,
              onChanged: onChange,
              child: const Text('년대'),
            ),
          ],
        ),
        if (groupValue == "년도")
          SizedBox(
            width: 186,
            child: AppTextFormField(
              key: ValueKey('$prefix 년도'),
              label: '$prefix 년도',
              suffixText: 'year',
              textAlign: TextAlign.end,
              maxLength: 4,
            ),
          )
        else
          SizedBox(
            width: 186,
            child: AppTextFormField(
              key: ValueKey('$prefix 년대'),
              label: '$prefix 년대',
              suffixText: '0\'s',
              textAlign: TextAlign.end,
              maxLength: 3,
            ),
          ),
      ],
    );
  }
}
