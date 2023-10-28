import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todotee_app/api/todo_api.dart';
import 'package:todotee_app/todo/bloc/todo_bloc.dart';
import 'package:todotee_app/todo/todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<HttpClient>(
          create: (context) => HttpClient(),
        ),
        Provider<TodoApi>(
          create: (context) => TodoApi(
            client: context.read<HttpClient>(),
          ),
        ),
        Provider<TodoBloc>(
          create: (context) => TodoBloc(todoApi: context.read<TodoApi>()),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: TodoPage.routeName,
        routes: {
          TodoPage.routeName: (context) => const TodoPage(),
        },
      ),
    );
  }
}
