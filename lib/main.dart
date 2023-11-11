import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todotee_app/api/memo_api.dart';
import 'package:todotee_app/api/todo_api.dart';
import 'package:todotee_app/pages/add_memo/add_memo_page.dart';
import 'package:todotee_app/pages/add_memo/add_memo_page_input_controllers.dart';
import 'package:todotee_app/pages/main_page.dart';
import 'package:todotee_app/pages/main_page_nav_cubit.dart';
import 'package:todotee_app/pages/memo/bloc/memo_bloc.dart';
import 'package:todotee_app/pages/todo/bloc/todo_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<MainPageNavCubit>(
          create: (context) => MainPageNavCubit(),
        ),
        Provider<HttpClient>(
          create: (context) => HttpClient(),
        ),
        Provider<TodoApi>(
          create: (context) => TodoApi(
            client: context.read<HttpClient>(),
          ),
        ),
        Provider<MemoApi>(
          create: (context) => MemoApi(
            client: context.read<HttpClient>(),
          ),
        ),
        Provider<TodoBloc>(
          create: (context) => TodoBloc(
            todoApi: context.read<TodoApi>(),
          ),
        ),
        Provider<MemoBloc>(
          create: (context) => MemoBloc(
            memoApi: context.read<MemoApi>(),
          ),
        ),
        Provider<AddMemoPageInputControllers>(
          create: (context) => AddMemoPageInputControllers(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: MainPage.routeName,
        routes: {
          MainPage.routeName: (context) => const MainPage(),
          AddMemoPage.routeName: (context) => const AddMemoPage(),
        },
      ),
    );
  }
}
