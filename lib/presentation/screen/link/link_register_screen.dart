import 'package:classic/bloc/link/register/link_register_bloc.dart';
import 'package:classic/bloc/link/register/link_register_event.dart';
import 'package:classic/bloc/link/register/link_register_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/common/util/bloc_util.dart';

class LinkRegisterScreen extends StatelessWidget {
  LinkRegisterScreen({super.key});

  static const String routeName = "/link/register";

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _linkController = TextEditingController();

  regist(BuildContext context) {
    if (_formKey.currentState?.validate() == true) {
      BlocProvider.of<LinkRegisterBloc>(context).add(LinkRegisterEvent.regist(
        BlocUtil.getUser(context)!.id,
        _linkController.text,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('링크 등록'),
      ),
      floatingActionButton: _FloatingButton(
        onTap: () => regist(context),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const _ErrorText(),
              TextFormField(
                controller: _linkController,
                decoration: const InputDecoration(
                  label: Text('링크'),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) return "링크를 입력해주세요.";
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ErrorText extends StatelessWidget {
  const _ErrorText();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LinkRegisterBloc, LinkRegisterState, Status>(
      selector: (state) => state.status,
      builder: (context, status) {
        if (status is StatusFail) {
          return Text(
            status.message!,
            style: const TextStyle(color: Colors.red),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

class _FloatingButton extends StatelessWidget {
  const _FloatingButton({required this.onTap});

  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          // height: 35.h,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: lightColorTheme.primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: BlocSelector<LinkRegisterBloc, LinkRegisterState, Status>(
            selector: (state) => state.status,
            builder: (context, status) {
              if (status is StatusLoading) {
                return const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2.5,
                  ),
                );
              } else if (status is StatusFail) {
                return const Icon(
                  Icons.priority_high_rounded,
                  color: Colors.white,
                );
              } else {
                return const Icon(
                  Icons.check,
                  color: Colors.white,
                );
              }
            },
          )),
    );
  }
}
