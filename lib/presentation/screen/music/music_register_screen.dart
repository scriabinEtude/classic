import 'package:classic/common/imports.dart';

class MusicRegisterScreen extends StatefulWidget {
  const MusicRegisterScreen({
    super.key,
    required this.name,
  });

  static const routeName = "musicRegist";
  final String name;

  @override
  State<MusicRegisterScreen> createState() => _MusicRegisterScreenState();
}

class _MusicRegisterScreenState extends State<MusicRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
