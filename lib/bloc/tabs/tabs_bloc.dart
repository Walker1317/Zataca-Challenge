import 'dart:async';
import 'package:zataca_challenge/bloc/tabs/tabs_repository.dart';
import 'package:zataca_challenge/bloc/tabs/tabs_event.dart';
import 'package:zataca_challenge/bloc/tabs/tabs_state.dart';

class TabsBloc{
  final _tabsRepo = TabsRepository();
  final StreamController<TabsEvent> _inputTabsController = StreamController<TabsEvent>();
  final StreamController<TabsState> _outputTabsController = StreamController<TabsState>();

  Sink<TabsEvent> get inputTabs => _inputTabsController.sink;
  Stream<TabsState> get stream => _outputTabsController.stream;

  TabsBloc(){
    _inputTabsController.stream.listen(_mapEventToState);
  }

  _mapEventToState(TabsEvent event) {
    Tabs tabs = Tabs(
      tab1: null,
      tab2: () {},
    );
    print(event);
    if (event is LoadTabsEvent){
      tabs = _tabsRepo.tab1();
    } else if (event is SelectTab1){
      tabs = _tabsRepo.tab1();
    } else if (event is SelectTab2){
      tabs = _tabsRepo.tab2();
    }
    _outputTabsController.add(TabsSuccessState(tabs: tabs));
  }

}