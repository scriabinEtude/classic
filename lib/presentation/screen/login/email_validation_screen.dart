import 'package:classic/bloc/user/user_bloc.dart';
import 'package:classic/bloc/user/user_event.dart';
import 'package:classic/bloc/user/user_state.dart';
import 'package:classic/presentation/screen/home/home_screen.dart';
import 'package:classic/common/imports.dart';

class EmailValidationScreen extends StatefulWidget {
  const EmailValidationScreen({super.key});

  static const String routeName = "login/email/validation";

  @override
  State<EmailValidationScreen> createState() => _EmailValidationScreenState();
}

class _EmailValidationScreenState extends State<EmailValidationScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state.user?.emailVerified == true) {
          context.goNamed(HomeScreen.routeName);
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 30.h),
              const _Header(),
              SizedBox(height: 50.h),
              const _Text('이메일이 오지 않으셨나요?'),
              const _Text('간혹 메일이 스펨 매일함에 있을 수 있습니다.'),
              SizedBox(height: 50.h),
              const _ReSend(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Text(
      '이메일 인증을 진행해 주세요.',
      style: TextStyle(fontSize: 30.sp),
    );
  }
}

class _Text extends StatelessWidget {
  const _Text(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 16.sp),
    );
  }
}

class _ReSend extends StatefulWidget {
  const _ReSend();

  @override
  State<_ReSend> createState() => _ReSendState();
}

class _ReSendState extends State<_ReSend> {
  bool send = false;

  resend() {
    BlocProvider.of<UserBloc>(context).add(const UserEvent.sendVerifiedEmail());
    setState(() {
      send = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 200.w,
      child: Center(
        child: Builder(
          builder: (context) {
            if (send) {
              return Icon(
                Icons.check,
                color: lightColorTheme.primaryColor,
              );
            } else {
              return OutlinedButton(
                onPressed: resend,
                child: Text(
                  '다시 보내기',
                  style: TextStyle(fontSize: 16.sp),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
