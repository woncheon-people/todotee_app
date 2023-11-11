import 'package:flutter_bloc/flutter_bloc.dart';

class MainPageNavCubit extends Cubit<int> {
  MainPageNavCubit() : super(0);

  void movePage(int index) {
    emit(index);
  }
}
