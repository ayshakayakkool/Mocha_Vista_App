part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}


class CheckLoginStatusEvent extends AuthEvent {}




//login event
class LoginEvent extends AuthEvent {
  final String email;
  final String password;

  LoginEvent({required this.email, required this.password});
}

//signup event
class SignupEvent extends AuthEvent {
  final UserModel user;
  SignupEvent({required this.user});
}