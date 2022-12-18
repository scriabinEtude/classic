import 'package:classic/common/imports.dart';

class ComposerRegisterScreen extends StatelessWidget {
  ComposerRegisterScreen({super.key});

  static const String routeName = "/composer/register";

  final _formKey = GlobalKey<FormState>();

  String? korValidator(String? value, String example) {
    if (value == null) {
      return "작곡가 이름을 입력해 주세요. (예: $example)";
    } else if (!RegExp(r'^[가-힣 ]$').hasMatch(value)) {
      return "한글과 공백만 가능합니다";
    } else {
      return null;
    }
  }

  String? engValidator(String? value, String example) {
    if (value == null) {
      return "작곡가 이름을 입력해 주세요. (예: $example)";
    } else if (!RegExp(r'^[a-zA-Z ]$').hasMatch(value)) {
      return "영어와 공백만 가능합니다";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('작곡가 추가'),
        centerTitle: true,
        actions: [
          InkWell(
            child: Row(
              children: [
                Text(
                  '확인',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: lightColorTheme.primaryColor,
                  ),
                ),
                SizedBox(width: 20.w),
              ],
            ),
          )
        ],
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
                validator: (value) => korValidator(value, "쇼팽"),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('작곡가 성명 (한글)'),
                  hintText: "프레데릭 프랑수아 쇼팽",
                ),
                validator: (value) => korValidator(value, "프레데릭 프랑수아 쇼팽"),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('작곡가 이름 (영어)'),
                  hintText: "Chopin",
                ),
                validator: (value) => engValidator(value, "Chopin"),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('작곡가 성명 (영어)'),
                  hintText: "Frederic Francois Chopin",
                ),
                validator: (value) =>
                    engValidator(value, "Frederic Francois Chopin"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
