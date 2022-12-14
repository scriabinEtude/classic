import 'package:classic/bloc/link/register/link_register_bloc.dart';
import 'package:classic/bloc/link/register/link_register_event.dart';
import 'package:classic/common/imports.dart';

class LinkRegisterScreen extends StatelessWidget {
  LinkRegisterScreen({super.key});

  static const String routeName = "/link/register";

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _linkController = TextEditingController();

  regist(BuildContext context) {
    if (_formKey.currentState?.validate() == true) {
      BlocProvider.of<LinkRegisterBloc>(context)
          .add(LinkRegisterEvent.regist(_linkController.text));
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

class _FloatingButton extends StatelessWidget {
  const _FloatingButton({required this.onTap});

  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: lightColorTheme.primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Icon(
            Icons.check,
            color: Colors.white,
          )),
    );
  }
}
