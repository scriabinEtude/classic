import 'package:classic/common/imports.dart';
import 'package:classic/presentation/screen/link/link_register_screen.dart';
import 'package:classic/presentation/screen/music/music_register_screen.dart';
import 'package:classic/presentation/screen/person/person_register_screen.dart';

class RegisterChoiceBottomSheet extends StatelessWidget {
  const RegisterChoiceBottomSheet({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  static void show(BuildContext context, String name) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return RegisterChoiceBottomSheet(
            name: name,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      padding: EdgeInsets.only(top: 60.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _Item(
            icon: const Icon(Icons.play_circle_outline),
            label: '유튜브',
            onTap: () {
              context.pop();
              context.pushNamed(LinkRegisterScreen.routeName);
            },
          ),
          _Item(
            icon: const Icon(Icons.music_note),
            label: '음악',
            onTap: () {
              context.pop();
              MusicRegisterScreen.route(context, name);
            },
          ),
          _Item(
            icon: const Icon(Icons.person),
            label: '인물 / 단체',
            onTap: () {
              context.pop();
              PersonRegisterScreen.route(context, name);
            },
          ),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final Widget icon;
  final String label;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3.5,
      child: InkWell(
          splashColor: Colors.transparent,
          onTap: onTap,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon,
              SizedBox(height: 12.h),
              Text(label),
            ],
          )),
    );
  }
}
