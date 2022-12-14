import 'package:classic/common/imports.dart';
import 'package:classic/data/model/user.dart';
import 'package:classic/bloc/user/user_bloc.dart';

class BlocUtil {
  static User? getUser(BuildContext context){
    return BlocProvider.of<UserBloc>(context).state.user;
  }
}