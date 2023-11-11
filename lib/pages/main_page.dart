import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todotee_app/pages/main_page_nav_cubit.dart';
import 'package:todotee_app/pages/main_page_nav_item.dart';
import 'package:todotee_app/pages/memo/memo_page.dart';
import 'package:todotee_app/pages/todo/todo_page.dart';
import 'package:todotee_app/widgets/logo_atom.dart';

class MainPage extends StatelessWidget {
  static const String routeName = '/';

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MainPageNavCubit navCubit = context.read<MainPageNavCubit>();

    List<MainPageNavItem> items = [
      MainPageNavItem(
        title: const Text(
          'TODOS',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
        ),
        iconItem: const BottomNavigationBarItem(
          icon: Icon(Icons.check_box),
          label: 'Todo',
        ),
        page: const TodoPage(),
      ),
      MainPageNavItem(
        title: const Text(
          'MEMOS',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
        ),
        iconItem: const BottomNavigationBarItem(
          icon: Icon(Icons.check_box),
          label: 'Memo',
        ),
        page: const MemoPage(),
      ),
    ];

    return BlocBuilder<MainPageNavCubit, int>(
      bloc: navCubit,
      builder: (context, currentIndex) => Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const LogoAtom(),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 11.0),
              child: items.elementAt(currentIndex).title,
            )
          ],
        ),
        body: items.elementAt(currentIndex).page,
        bottomNavigationBar: BottomNavigationBar(
          items: items.map((e) => e.iconItem).toList(),
          currentIndex: currentIndex,
          onTap: _onMovePage(navCubit),
        ),
      ),
    );
  }

  void Function(int) _onMovePage(MainPageNavCubit navCubit) => (int index) {
        navCubit.movePage(index);
      };
}
