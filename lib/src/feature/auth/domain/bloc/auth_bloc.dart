import 'package:auth_test/src/feature/auth/domain/models/auth_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  final String loginResult = '';
  AuthModel authModel = AuthModel();
  UserCredential? userCredential;

  AuthBloc() : super(AuthBlocInitialState()) {
    on<SendOtpEvent>((event, emit) async {
      emit(AuthBlocLoadingState());
      try {
        await authModel.loginWithPhone(
            phoneNumber: event.number,
            verificationCompleted: (PhoneAuthCredential credentials) {
              add(OnPhoneAuthCompletedEvent(
                credential: credentials,
              ));
            },
            verificationFailed: (FirebaseAuthException e) {
              add(OnPhoneAuthErrorEvent(
                error: e.toString(),
              ));
            },
            codeSent: (String verificationId, int? refreshToken) {
              add(OnPhoneOtpSendEvent(
                verificationId: verificationId,
                token: refreshToken,
              ));
            },
            codeAutoRetrivalTimeout: (String verificationId) {});
      } catch (e) {
        emit(AuthBlocErrorState(error: e.toString()));
      }
    });

    on<OnPhoneOtpSendEvent>((event, emit) {
      emit(PhoneAuthCodeSentSuccessState(verificationId: event.verificationId));
    });

    on<VerifySentOtpEvent>((event, emit) {
      try {
        PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: event.verificationId,
          smsCode: event.otpCode,
        );
        add(OnPhoneAuthCompletedEvent(credential: credential));
      } catch (e) {
        emit(AuthBlocErrorState(error: e.toString()));
      }
    });

    on<OnPhoneAuthErrorEvent>((event, emit) {
      emit(AuthBlocErrorState(error: event.error.toString()));
    });

    on<OnPhoneAuthCompletedEvent>((event, emit) async {
      try {
        await authModel.authentication.signInWithCredential(event.credential).then((value) {
          emit(OtpSuccessState());
          emit(AuthBlocLoadedState());
        });
      } catch (e) {
        emit(AuthBlocErrorState(error: e.toString()));
      }
    });
  }
}
