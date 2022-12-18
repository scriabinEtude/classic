import 'package:classic/common/imports.dart';

class CustomOptionIconAndText extends StatelessWidget {
  const CustomOptionIconAndText({
    Key? key,
    required this.onSelect,
    this.text = '추가 하기',
    this.icon = Icons.add,
  }) : super(key: key);
  final void Function() onSelect;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelect,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: lightColorTheme.primaryColor,
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
}
