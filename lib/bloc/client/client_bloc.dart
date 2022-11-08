import 'dart:async';
import 'package:zataca_challenge/bloc/client/cilent_event.dart';
import 'package:zataca_challenge/bloc/client/client_repository.dart';
import 'package:zataca_challenge/bloc/client/client_state.dart';

class ClientBloc{
  final _clientRepo = ClientsRepository();

  final StreamController<ClientEvent> _inputClientController = StreamController<ClientEvent>();
  final StreamController<ClientState> _outputClientController = StreamController<ClientState>();

  Sink<ClientEvent> get inputClient => _inputClientController.sink;
  Stream<ClientState> get stream => _outputClientController.stream;

  ClientBloc(){
    _inputClientController.stream.listen(_mapEventToState);
  }

  _mapEventToState(ClientEvent event) async {
    List<Client> clients = [];
    if (event is LoadClientEvent) {
      clients = await _clientRepo.loadClients();
    }
    _outputClientController.add(ClientSuccessState(clients: clients ));
  }

}