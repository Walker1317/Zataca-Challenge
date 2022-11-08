import 'package:zataca_challenge/bloc/tabs/tabs_repository.dart';

abstract class TabsEvent{}

class LoadTabsEvent extends TabsEvent {}

class SelectTab1 extends TabsEvent {
  Tabs tabs;

  SelectTab1({required this.tabs});
  
}

class SelectTab2 extends TabsEvent{
  Tabs tabs;
  
  SelectTab2({required this.tabs});
}