// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class AuthState {}

class AuthInitial extends AuthState {}

class SignUpLoadingState extends AuthState {}

class SignUpLoadedState extends AuthState {}

class SignUpFailureState extends AuthState {
  String errorMessage;
  SignUpFailureState({required this.errorMessage});
}

class SignInLoadingState extends AuthState {}

class SignInLoadedState extends AuthState {}

class SignInFailureState extends AuthState {
  String errorMessage;
  SignInFailureState({required this.errorMessage});
}

class TermAndConditionUpdate extends AuthState {}

class HidenPasswordUpdate extends AuthState {}
