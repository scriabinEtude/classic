import 'package:classic/common/imports.dart';
import 'package:classic/data/enum/person_type.dart';
import 'package:classic/presentation/widget/app_text_form_field.dart';

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
              itemExtent: 80,
              children: [
                const AppTextFormField(label: '이름 (한글)'),
                const AppTextFormField(label: '이름 (영문)'),
                DropdownMenu(
                  enableSearch: true,
                  label: const Text('유형'),
                  dropdownMenuEntries: PersonType.values
                      .map((t) =>
                          DropdownMenuEntry(value: t.name, label: t.label))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
