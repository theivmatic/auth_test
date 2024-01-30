import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  AuthBloc() : super(AuthBlocInitialState()) {
    on<AuthBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
