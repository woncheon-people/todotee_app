import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todotee_app/pages/login/cubit/login_button_cubit.dart';
import 'package:todotee_app/pages/login/login_page_input_controllers.dart';
import 'package:todotee_app/pages/main_page.dart';
import 'package:todotee_app/widgets/logo_atom.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = "/login";

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controllers = context.read<LoginPageInputControllers>();

    controllers.initializeControllers();

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 11.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const LogoAtom(
              width: 240.0,
            ),
            const SizedBox(height: 50.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 11.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(12.0)),
              child: TextField(
                controller: controllers.idController,
                onChanged: (_) {
                  controllers.switchLoginButtonState();
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "아이디를 입력해주세요.",
                ),
              ),
            ),
            const SizedBox(height: 22.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 11.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(12.0)),
              child: TextField(
                controller: controllers.memoController,
                onChanged: (_) {
                  controllers.switchLoginButtonState();
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "비밀번호를 입력해주세요.",
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 50.0),
            BlocBuilder<LoginButtonCubit, bool>(
                bloc: controllers.loginButtonCubit,
                builder: (context, state) {
                  return InkWell(
                    onTap: state
                        ? () {
                            Navigator.of(context)
                                .pushReplacementNamed(MainPage.routeName);
                          }
                        : null,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: state
                            ? Colors.blueAccent.shade400
                            : Colors.grey.shade300,
                      ),
                      child: const Text(
                        "로그인",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
