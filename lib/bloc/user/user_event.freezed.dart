// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(User user) setUser,
    required TResult Function() logout,
    required TResult Function() sendVerifiedEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(User user)? setUser,
    TResult? Function()? logout,
    TResult? Function()? sendVerifiedEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(User user)? setUser,
    TResult Function()? logout,
    TResult Function()? sendVerifiedEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEventLogin value) login,
    required TResult Function(UserEventSetUser value) setUser,
    required TResult Function(UserEventLogout value) logout,
    required TResult Function(UserEventSendVerifiedEmail value)
        sendVerifiedEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEventLogin value)? login,
    TResult? Function(UserEventSetUser value)? setUser,
    TResult? Function(UserEventLogout value)? logout,
    TResult? Function(UserEventSendVerifiedEmail value)? sendVerifiedEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEventLogin value)? login,
    TResult Function(UserEventSetUser value)? setUser,
    TResult Function(UserEventLogout value)? logout,
    TResult Function(UserEventSendVerifiedEmail value)? sendVerifiedEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserEventLoginCopyWith<$Res> {
  factory _$$UserEventLoginCopyWith(
          _$UserEventLogin value, $Res Function(_$UserEventLogin) then) =
      __$$UserEventLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$UserEventLoginCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserEventLogin>
    implements _$$UserEventLoginCopyWith<$Res> {
  __$$UserEventLoginCopyWithImpl(
      _$UserEventLogin _value, $Res Function(_$UserEventLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserEventLogin(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEventLogin implements UserEventLogin {
  const _$UserEventLogin(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEventLogin &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEventLoginCopyWith<_$UserEventLogin> get copyWith =>
      __$$UserEventLoginCopyWithImpl<_$UserEventLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(User user) setUser,
    required TResult Function() logout,
    required TResult Function() sendVerifiedEmail,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(User user)? setUser,
    TResult? Function()? logout,
    TResult? Function()? sendVerifiedEmail,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(User user)? setUser,
    TResult Function()? logout,
    TResult Function()? sendVerifiedEmail,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEventLogin value) login,
    required TResult Function(UserEventSetUser value) setUser,
    required TResult Function(UserEventLogout value) logout,
    required TResult Function(UserEventSendVerifiedEmail value)
        sendVerifiedEmail,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEventLogin value)? login,
    TResult? Function(UserEventSetUser value)? setUser,
    TResult? Function(UserEventLogout value)? logout,
    TResult? Function(UserEventSendVerifiedEmail value)? sendVerifiedEmail,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEventLogin value)? login,
    TResult Function(UserEventSetUser value)? setUser,
    TResult Function(UserEventLogout value)? logout,
    TResult Function(UserEventSendVerifiedEmail value)? sendVerifiedEmail,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class UserEventLogin implements UserEvent {
  const factory UserEventLogin(final String email, final String password) =
      _$UserEventLogin;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$UserEventLoginCopyWith<_$UserEventLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEventSetUserCopyWith<$Res> {
  factory _$$UserEventSetUserCopyWith(
          _$UserEventSetUser value, $Res Function(_$UserEventSetUser) then) =
      __$$UserEventSetUserCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserEventSetUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserEventSetUser>
    implements _$$UserEventSetUserCopyWith<$Res> {
  __$$UserEventSetUserCopyWithImpl(
      _$UserEventSetUser _value, $Res Function(_$UserEventSetUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserEventSetUser(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserEventSetUser implements UserEventSetUser {
  const _$UserEventSetUser(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserEvent.setUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEventSetUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEventSetUserCopyWith<_$UserEventSetUser> get copyWith =>
      __$$UserEventSetUserCopyWithImpl<_$UserEventSetUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(User user) setUser,
    required TResult Function() logout,
    required TResult Function() sendVerifiedEmail,
  }) {
    return setUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(User user)? setUser,
    TResult? Function()? logout,
    TResult? Function()? sendVerifiedEmail,
  }) {
    return setUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(User user)? setUser,
    TResult Function()? logout,
    TResult Function()? sendVerifiedEmail,
    required TResult orElse(),
  }) {
    if (setUser != null) {
      return setUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEventLogin value) login,
    required TResult Function(UserEventSetUser value) setUser,
    required TResult Function(UserEventLogout value) logout,
    required TResult Function(UserEventSendVerifiedEmail value)
        sendVerifiedEmail,
  }) {
    return setUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEventLogin value)? login,
    TResult? Function(UserEventSetUser value)? setUser,
    TResult? Function(UserEventLogout value)? logout,
    TResult? Function(UserEventSendVerifiedEmail value)? sendVerifiedEmail,
  }) {
    return setUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEventLogin value)? login,
    TResult Function(UserEventSetUser value)? setUser,
    TResult Function(UserEventLogout value)? logout,
    TResult Function(UserEventSendVerifiedEmail value)? sendVerifiedEmail,
    required TResult orElse(),
  }) {
    if (setUser != null) {
      return setUser(this);
    }
    return orElse();
  }
}

abstract class UserEventSetUser implements UserEvent {
  const factory UserEventSetUser(final User user) = _$UserEventSetUser;

  User get user;
  @JsonKey(ignore: true)
  _$$UserEventSetUserCopyWith<_$UserEventSetUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEventLogoutCopyWith<$Res> {
  factory _$$UserEventLogoutCopyWith(
          _$UserEventLogout value, $Res Function(_$UserEventLogout) then) =
      __$$UserEventLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserEventLogoutCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserEventLogout>
    implements _$$UserEventLogoutCopyWith<$Res> {
  __$$UserEventLogoutCopyWithImpl(
      _$UserEventLogout _value, $Res Function(_$UserEventLogout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserEventLogout implements UserEventLogout {
  const _$UserEventLogout();

  @override
  String toString() {
    return 'UserEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserEventLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(User user) setUser,
    required TResult Function() logout,
    required TResult Function() sendVerifiedEmail,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(User user)? setUser,
    TResult? Function()? logout,
    TResult? Function()? sendVerifiedEmail,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(User user)? setUser,
    TResult Function()? logout,
    TResult Function()? sendVerifiedEmail,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEventLogin value) login,
    required TResult Function(UserEventSetUser value) setUser,
    required TResult Function(UserEventLogout value) logout,
    required TResult Function(UserEventSendVerifiedEmail value)
        sendVerifiedEmail,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEventLogin value)? login,
    TResult? Function(UserEventSetUser value)? setUser,
    TResult? Function(UserEventLogout value)? logout,
    TResult? Function(UserEventSendVerifiedEmail value)? sendVerifiedEmail,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEventLogin value)? login,
    TResult Function(UserEventSetUser value)? setUser,
    TResult Function(UserEventLogout value)? logout,
    TResult Function(UserEventSendVerifiedEmail value)? sendVerifiedEmail,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class UserEventLogout implements UserEvent {
  const factory UserEventLogout() = _$UserEventLogout;
}

/// @nodoc
abstract class _$$UserEventSendVerifiedEmailCopyWith<$Res> {
  factory _$$UserEventSendVerifiedEmailCopyWith(
          _$UserEventSendVerifiedEmail value,
          $Res Function(_$UserEventSendVerifiedEmail) then) =
      __$$UserEventSendVerifiedEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserEventSendVerifiedEmailCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserEventSendVerifiedEmail>
    implements _$$UserEventSendVerifiedEmailCopyWith<$Res> {
  __$$UserEventSendVerifiedEmailCopyWithImpl(
      _$UserEventSendVerifiedEmail _value,
      $Res Function(_$UserEventSendVerifiedEmail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserEventSendVerifiedEmail implements UserEventSendVerifiedEmail {
  const _$UserEventSendVerifiedEmail();

  @override
  String toString() {
    return 'UserEvent.sendVerifiedEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEventSendVerifiedEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(User user) setUser,
    required TResult Function() logout,
    required TResult Function() sendVerifiedEmail,
  }) {
    return sendVerifiedEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(User user)? setUser,
    TResult? Function()? logout,
    TResult? Function()? sendVerifiedEmail,
  }) {
    return sendVerifiedEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(User user)? setUser,
    TResult Function()? logout,
    TResult Function()? sendVerifiedEmail,
    required TResult orElse(),
  }) {
    if (sendVerifiedEmail != null) {
      return sendVerifiedEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEventLogin value) login,
    required TResult Function(UserEventSetUser value) setUser,
    required TResult Function(UserEventLogout value) logout,
    required TResult Function(UserEventSendVerifiedEmail value)
        sendVerifiedEmail,
  }) {
    return sendVerifiedEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEventLogin value)? login,
    TResult? Function(UserEventSetUser value)? setUser,
    TResult? Function(UserEventLogout value)? logout,
    TResult? Function(UserEventSendVerifiedEmail value)? sendVerifiedEmail,
  }) {
    return sendVerifiedEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEventLogin value)? login,
    TResult Function(UserEventSetUser value)? setUser,
    TResult Function(UserEventLogout value)? logout,
    TResult Function(UserEventSendVerifiedEmail value)? sendVerifiedEmail,
    required TResult orElse(),
  }) {
    if (sendVerifiedEmail != null) {
      return sendVerifiedEmail(this);
    }
    return orElse();
  }
}

abstract class UserEventSendVerifiedEmail implements UserEvent {
  const factory UserEventSendVerifiedEmail() = _$UserEventSendVerifiedEmail;
}
