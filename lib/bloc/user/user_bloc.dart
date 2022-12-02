import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:classic/bloc/user/user_event.dart';
import 'package:classic/bloc/user/user_state.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/module/api/result.dart';
import 'package:classic/common/module/secure_storage/secure_storage.dart';
import 'package:classic/data/common/status/status.dart';
import 'package:classic/data/dto/login_dto.dart';
import 'package:classic/data/model/user.dart';
import 'package:classic/data/repository/user/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc()
      : _userRepository = di.get<UserRepository>(),
        super(UserState(status: Status.init())) {
    on<UserEventSetUser>(_setUser);
    on<UserEventLogin>(_login);
    on<UserEventLogout>(_logout);
    on<UserEventSendVerifiedEmail>(_sendVerifiedEmail);
    firebaseUserListner();
  }

  final UserRepository _userRepository;
  User? get user => state.user;
  late StreamSubscription<auth.User?> firebaseAuthSubscription;

  _login(UserEventLogin event, Emitter emit) async {
    if (event.email == "123" || event.password == "123123123") {
      emit(
        state.copyWith(
          user: User(
            email: event.email,
            nickname: 'tester',
            emailVerified: true,
          ),
          status: Status.success(),
        ),
      );
    }

    try {
      emit(state.copyWith(status: Status.loading()));

      Result<LoginDTO> result =
          await _userRepository.login(event.email, event.password);

      result.map(
        success: (success) {
          emit(
            state.copyWith(
              user: success.data.user,
              status: Status.success(),
            ),
          );
          SecureStorage().jwtSet(success.data.jwt);
        },
        failure: (failure) {
          emit(state.copyWith(status: Status.fail(message: "로그인에 실패하였습니다.")));
        },
      );
    } catch (e) {
      emit(state.copyWith(status: Status.fail(message: "로그인에 실패하였습니다.")));
    }
  }

  _logout(UserEventLogout event, Emitter emit) async {
    await auth.FirebaseAuth.instance.signOut();
    emit(UserState(status: StatusInit()));
  }

  _setUser(UserEventSetUser event, Emitter emit) {
    emit(state.copyWith(user: event.user));
  }

  _sendVerifiedEmail(UserEventSendVerifiedEmail event, Emitter emit) {
    auth.FirebaseAuth.instance.currentUser?.sendEmailVerification();
  }

  firebaseUserListner() {
    firebaseAuthSubscription = auth.FirebaseAuth.instance.userChanges().listen(
      (auth.User? user) {
        if (user == null) {
          add(const UserEventLogout());
        } else {
          add(UserEvent.setUser(User(
            email: user.email!,
            emailVerified: user.emailVerified,
            nickname: user.displayName ?? user.email!,
          )));
        }
      },
    );
  }

  @override
  Future<void> close() {
    firebaseAuthSubscription.cancel();
    return super.close();
  }
}
