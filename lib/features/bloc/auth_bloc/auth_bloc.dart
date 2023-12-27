import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginEvent>(authLogin);
    on<AuthSignUpEvent>(authSignUp);
  }

  FutureOr<void> authLogin(
      AuthLoginEvent event, Emitter<AuthState> emit) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emit(AuthSucess(user: userCredential.user!));
    } on FirebaseAuthException catch (e) {
      emit(AuthError(message: e.message ?? 'An error occurred during login.'));
    }
  }

  FutureOr<void> authSignUp(
      AuthSignUpEvent event, Emitter<AuthState> emit) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emit(AuthSucess(user: userCredential.user!));
    } on FirebaseAuthException catch (e) {
      emit(
          AuthError(message: e.message ?? 'An error occurred during sign-up.'));
    }
  }
}
