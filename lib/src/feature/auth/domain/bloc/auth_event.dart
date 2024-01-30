part of 'auth_bloc.dart';

@immutable
sealed class AuthBlocEvent {}

class SendOtpEvent extends AuthBlocEvent {
  final String number;

  SendOtpEvent({required this.number});
}

class OnPhoneOtpSendEvent extends AuthBlocEvent {
  final String verificationId;
  final int? token;

  OnPhoneOtpSendEvent({
    required this.verificationId,
    required this.token,
  });
}

class VerifySentOtpEvent extends AuthBlocEvent {
  final String verificationId;
  final String otpCode;

  VerifySentOtpEvent({
    required this.verificationId,
    required this.otpCode,
  });
}

class OnPhoneAuthErrorEvent extends AuthBlocEvent {
  final String error;

  OnPhoneAuthErrorEvent({required this.error});
}

class OnPhoneAuthCompletedEvent extends AuthBlocEvent {
  final AuthCredential credential;

  OnPhoneAuthCompletedEvent({required this.credential});
}
