import 'package:zataca_challenge/bloc/client/client_repository.dart';

abstract class ClientEvent{}

class LoadClientEvent extends ClientEvent {}

class AddClientEvent extends ClientEvent {
  Client client;

  AddClientEvent({required this.client});
  
}

class RemoveClientEvent extends ClientEvent{
  Client client;
  
  RemoveClientEvent({required this.client});
}