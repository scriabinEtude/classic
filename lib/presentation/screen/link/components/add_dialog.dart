import 'package:classic/common/imports.dart';
import 'package:classic/data/enum/search_type.dart';
import 'package:classic/presentation/screen/search/search_screen.dart';

class LinkInfoAddDialog extends StatelessWidget {
  const LinkInfoAddDialog({super.key});

  static Future<void> show(BuildContext blocContext) async {
    return await showModalBottomSheet(
        context: blocContext,
        builder: ((context) {
          return const LinkInfoAddDialog();
        }));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.only(top: 40.0.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _BottomSheetItem(
              title: '음악',
              icon: const Icon(
                Icons.music_note_sharp,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.pop(context);
                SearchScreen.push(context, SearchType.linkRegisterMusic);
              },
            ),
            _BottomSheetItem(
              title: '연주자',
              icon: const Icon(
                Icons.person,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.pop(context);
                SearchScreen.push(context, SearchType.linkRegisterPlayer);
              },
            ),
            _BottomSheetItem(
              title: '지휘자',
              icon: const Icon(
                Icons.person,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.pop(context);
                SearchScreen.push(context, SearchType.linkRegisterConductor);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomSheetItem extends StatelessWidget {
  const _BottomSheetItem({
    required this.title,
    required this.icon,
    required this.onPressed,
  });
  final String title;
  final void Function() onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Column(
          children: [
            icon,
            SizedBox(height: 10.h),
            Text(
              title,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ));
  }
}
