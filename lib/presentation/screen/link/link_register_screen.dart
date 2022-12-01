import 'package:classic/presentation/color/light_color.dart';
import 'package:flutter/material.dart';

class LinkRegisterScreen extends StatelessWidget {
  LinkRegisterScreen({super.key});

  static const String routeName = "/link/register";

  final formKey = GlobalKey<FormState>();
  final TextEditingController _linkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('링크 등록'),
      ),
      floatingActionButton: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: lightColorTheme.primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Icon(
            Icons.check,
            color: Colors.white,
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
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
