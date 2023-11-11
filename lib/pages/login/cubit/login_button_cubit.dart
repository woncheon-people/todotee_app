import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButtonCubit extends Cubit<bool> {
  LoginButtonCubit() : super(false);

  void changeState(bool newState) {
    emit(newState);
  }
}
