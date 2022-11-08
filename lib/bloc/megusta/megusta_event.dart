import 'package:zataca_challenge/bloc/megusta/megusta_repository.dart';

abstract class MegustaEvent{}

class LoadMegustaEvent extends MegustaEvent {}

class AddMegustaEvent extends MegustaEvent {
  MeGusta meGusta;

  AddMegustaEvent({required this.meGusta});
  
}

class RemoveMegustaEvent extends MegustaEvent{
  MeGusta meGusta;
  
  RemoveMegustaEvent({required this.meGusta});
}