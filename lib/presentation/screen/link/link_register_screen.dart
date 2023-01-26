import 'package:classic/bloc/link/link/link_bloc.dart';
import 'package:classic/bloc/link/link/link_event.dart';
import 'package:classic/bloc/link/register/link_register_bloc.dart';
import 'package:classic/bloc/link/register/link_register_event.dart';
import 'package:classic/bloc/link/register/link_register_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/enum/search_type.dart';
import 'package:classic/presentation/screen/link/components/link_widget.dart';
import 'package:classic/presentation/screen/search/search_screen.dart';

part 'components/link_form.dart';

class LinkRegisterScreen extends StatefulWidget {
  const LinkRegisterScreen({super.key});

  static const String routeName = "/link/register";

  @override
  State<LinkRegisterScreen> createState() => _LinkRegisterScreenState();
}

class _LinkRegisterScreenState extends State<LinkRegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _linkController = TextEditingController();

  @override
  void dispose() {
    _linkController.dispose();
    super.dispose();
  }

  regist(BuildContext context) {
    if (_formKey.currentState?.validate() == true) {}
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LinkRegisterBloc, LinkRegisterState>(
        listener: (context, state) {
      state.status.whenOrNull(success: (code) {
        if (code == CODE_LINK_REGISTER_SUCCESS) {
          BlocProvider.of<LinkBloc>(context).add(LinkEvent.getLinks());
          context.pop();
        }
      });
    }, builder: (context, state) {
      return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('링크 등록'),
            actions: [
              _Submit(state: state, onTap: () {}),
            ],
          ),
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 20.h),
                  _LinkForm(
                    state: state,
                    controller: _linkController,
                  ),
                  SizedBox(height: 16.h),
                  _Header(
                    title: '음악',
                    onTap: () => SearchScreen.push(
                      context,
                      SearchType.linkRegisterMusic,
                    ),
                  ),
                  _Header(
                    title: '연주자',
                    onTap: () => SearchScreen.push(
                      context,
                      SearchType.linkRegisterPlayer,
                    ),
                  ),
                  _Header(
                    title: '지휘자',
                    onTap: () => SearchScreen.push(
                      context,
                      SearchType.linkRegisterConductor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

class _Submit extends StatelessWidget {
  const _Submit({required this.onTap, required this.state});

  final void Function() onTap;
  final LinkRegisterState state;
  @override
  Widget build(BuildContext context) {
    final status = state.status;

    return InkWell(
      onTap: onTap,
      child: Builder(builder: (context) {
        if (status is StatusLoading) {
          return const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
              ),
            ),
          );
        } else if (status is StatusFail) {
          return const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.priority_high_rounded,
              color: Colors.red,
            ),
          );
        } else {
          return TextButton(onPressed: () {}, child: const Text('완료'));
        }
      }),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.title,
    required this.onTap,
  });

  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      leading: const Icon(Icons.add),
      minLeadingWidth: 0,
      onTap: onTap,
    );
  }
}
