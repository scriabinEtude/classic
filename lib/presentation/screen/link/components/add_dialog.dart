import 'package:classic/common/imports.dart';

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
      height: 100.w,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _BottomSheetItem('음악 추가', () {
              Navigator.pop(context);
            }),
            _BottomSheetItem('연주자 추가', () {
              Navigator.pop(context);
            }),
            _BottomSheetItem('지휘자 추가', () {
              Navigator.pop(context);
            }),
          ],
        ),
      ),
    );
  }
}

class _BottomSheetItem extends StatelessWidget {
  const _BottomSheetItem(this.title, this.onPressed);
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ));
  }
}
