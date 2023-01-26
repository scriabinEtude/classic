import 'package:classic/common/imports.dart';
import 'package:classic/presentation/widget/autocomplete/data/autocompletable.dart';

class CustomOptionIconAndText extends Autocompletable {
  CustomOptionIconAndText({
    Key? key,
    required this.onSelect,
    this.text = '추가 하기',
    this.icon = Icons.add,
  });
  final void Function() onSelect;
  final String text;
  final IconData icon;

  @override
  bool isMatch(String inputText) => true;

  @override
  String displayString() => text;

  @override
  Widget displayWidget() => InkWell(
        onTap: onSelect,
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 16.sp,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(text),
          ],
        ),
      );
}
