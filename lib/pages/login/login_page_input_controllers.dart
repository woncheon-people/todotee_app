import 'package:flutter/material.dart';
import 'package:todotee_app/pages/login/cubit/login_button_cubit.dart';

class LoginPageInputControllers {
  late TextEditingController _idController;
  TextEditingController get idController => _idController;

  late TextEditingController _memoController;
  TextEditingController get memoController => _memoController;

  late LoginButtonCubit _loginButtonCubit;
  LoginButtonCubit get loginButtonCubit => _loginButtonCubit;

  LoginPageInputControllers();

  void initializeControllers() {
    _idController = TextEditingController();
    _memoController = TextEditingController();
    _loginButtonCubit = LoginButtonCubit();
  }

  void switchLoginButtonState() {
    final bool isButtonValid =
        _idController.text.isNotEmpty && _memoController.text.isNotEmpty;
    _loginButtonCubit.changeState(isButtonValid);
  }
}
