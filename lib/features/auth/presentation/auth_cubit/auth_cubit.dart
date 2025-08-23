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
  final signUpKey = GlobalKey<FormState>();
  final signInKey = GlobalKey<FormState>();
  final forgetPasswordKey = GlobalKey<FormState>();

  bool? termsAndCondition = false;
  bool? obscureText = true;

  signUpWithPasswordAndEmail() async {
    try {
      emit(SignUpLoadingState());
      final userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);
      // await userCredential.user?.sendEmailVerification();
      emailVerified();
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
      } else {
        emit(SignUpFailureState(errorMessage: "wrong check"));
      }
    } catch (e) {
      SignUpFailureState(errorMessage: e.toString());
    }
  }

  emailVerified() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  termsAndConditionUpdate({required newValue}) {
    termsAndCondition = newValue;
    emit(TermAndConditionUpdate());
  }

  hidenPassword(bool obscureText) {
    this.obscureText = obscureText;
    emit(HidenPasswordUpdate());
  }

  signInWithEmailAndPassword() async {
    try {
      emit(SignInLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      emit(SignInLoadedState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailureState(errorMessage: "No user found for that email."));
      } else if (e.code == 'wrong-password') {
        emit(
          SignInFailureState(
            errorMessage: "Wrong password provided for that user.",
          ),
        );
      } else {
        emit(SignInFailureState(errorMessage: "check email and password"));
      }
    } catch (e) {
      emit(SignInFailureState(errorMessage: e.toString()));
    }
  }

  resetPassword() async {
    try {
      emit(ForgetPasswordLoadingState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email!);
      emit(ForgetPasswordLoadedState());
    } on Exception catch (e) {
      emit(ForgetPasswordFailureState(errorMessage: e.toString()));
    }
  }
}
