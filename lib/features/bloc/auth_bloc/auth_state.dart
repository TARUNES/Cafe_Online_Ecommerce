part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}


class LoadState extends AuthState{}

class AuthSucess extends AuthState{
  final User user;

  AuthSucess({required this.user});
  
}

class AuthError extends AuthState{
  final String message;

  AuthError({required this.message});
}


