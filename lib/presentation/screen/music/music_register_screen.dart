import 'package:classic/common/imports.dart';
import 'package:classic/data/enum/search_type.dart';
import 'package:classic/presentation/screen/search/search_screen.dart';
import 'package:classic/presentation/widget/form_field/app_text_form_field.dart';

class MusicRegisterScreen extends StatefulWidget {
  const MusicRegisterScreen({
    super.key,
    required this.name,
  });

  static const routeName = "musicRegist";
  final String name;

  static void route(BuildContext context, String name) {
    context.pushNamed(routeName, params: {'name': name});
  }

  @override
  State<MusicRegisterScreen> createState() => _MusicRegisterScreenState();
}

class _MusicRegisterScreenState extends State<MusicRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('음악 등록'),
        ),
        body: Form(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: ListView(
              itemExtent: 80,
              children: [
                AppTextFormField(
                  label: "작곡가",
                  suffixIcon: const Icon(Icons.search),
                  icon: const Icon(Icons.person_outline_outlined),
                  readOnly: true,
                  onTap: () {
                    SearchScreen.push(
                      context,
                      SearchType.musicRegisterConductor,
                    );
                  },
                ),
                const AppTextFormField(
                  label: "시대",
                ),
                const AppTextFormField(
                  label: "음악형식",
                ),
                const AppTextFormField(
                  label: "작곡년도",
                ),
                const AppTextFormField(
                  label: "음악 이름 (한글)",
                ),
                const AppTextFormField(
                  label: "음악 이름 (영문)",
                ),
                const AppTextFormField(
                  label: "부제 (한글)",
                ),
                const AppTextFormField(
                  label: "부제 (영문)",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
