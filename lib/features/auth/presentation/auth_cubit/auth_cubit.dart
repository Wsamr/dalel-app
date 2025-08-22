import 'package:dalel_app/features/auth/presentation/auth_cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  final golbalKey = GlobalKey<FormState>();
  bool? termsAndCondition = false;
  bool? obscureText = true;

  signUpWithPasswordAndEmail() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      emit(SignUpLoadedState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(
          SignUpFailureState(
            errorMessage: "The password provided is too weak.",
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        emit(
          SignUpFailureState(
            errorMessage: "The account already exists for that email.",
          ),
        );
      }
    } catch (e) {
      SignUpFailureState(errorMessage: e.toString());
    }
  }

  termsAndConditionUpdate({required newValue}) {
    termsAndCondition = newValue;
    emit(TermAndConditionUpdate());
  }

  hidenPassword(bool obscureText) {
    this.obscureText = obscureText;
    emit(HidenPasswordUpdate());
  }
}
