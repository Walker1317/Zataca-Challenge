import 'package:zataca_challenge/bloc/tabs/tabs_repository.dart';

abstract class TabsState{
  Tabs tabs;

  TabsState({required this.tabs});

}

class TabsInitialState extends TabsState{
  TabsInitialState() : super(tabs: Tabs());
}

class TabsSuccessState extends TabsState{
  TabsSuccessState({required Tabs tabs,}) : super(tabs: tabs);
}