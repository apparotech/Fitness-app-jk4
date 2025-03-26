import 'package:dell_project/tab_bar/bloc/tab_bar_event.dart';
import 'package:dell_project/tab_bar/bloc/tab_bar_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabBarBloc extends Bloc<TabBarEvent, TabBarState> {
  int currentIndex = 0;
  TabBarBloc() : super(TabBarInitial()){
    on<TabBarItemTappedEvent>((event, emit) {
      currentIndex = event.index;
      emit(TabBarItemSelectedState(index: currentIndex));

    });
  }







}