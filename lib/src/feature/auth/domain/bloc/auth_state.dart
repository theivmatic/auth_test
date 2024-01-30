part of 'auth_bloc.dart';

@immutable
sealed class AuthBlocState {}

final class AuthBlocInitialState extends AuthBlocState {}

final class AuthBlocLoadingState extends AuthBlocState {}

final class AuthBlocLoadedState extends AuthBlocState {}

final class AuthBlocErrorState extends AuthBlocState {
  final String error;

  AuthBlocErrorState({required this.error});
}

final class PhoneAuthCodeSentSuccessState extends AuthBlocState {
  final String verificationId;

  PhoneAuthCodeSentSuccessState({required this.verificationId});
}

final class OtpSuccessState extends AuthBlocState {}
