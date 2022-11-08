import 'dart:async';
import 'package:zataca_challenge/bloc/megusta/megusta_event.dart';
import 'package:zataca_challenge/bloc/megusta/megusta_repository.dart';
import 'package:zataca_challenge/bloc/megusta/megusta_state.dart';

class MegustaBloc{
  final StreamController<MegustaEvent> _inputMegustaController = StreamController<MegustaEvent>();
  final StreamController<MegustaState> _outputMegustaController = StreamController<MegustaState>();

  Sink<MegustaEvent> get inputMegusta => _inputMegustaController.sink;
  Stream<MegustaState> get stream => _outputMegustaController.stream;

  MegustaBloc(){
    _inputMegustaController.stream.listen(_mapEventToState);
  }

  _mapEventToState(MegustaEvent event) {
    MeGusta meGusta = MeGusta();
    print(event);
    if (event is AddMegustaEvent){
      meGusta = MeGusta(megusta: true);
    } else if (event is RemoveMegustaEvent){
      meGusta = MeGusta(megusta: false);
    }
    _outputMegustaController.add(MegustaSuccessState(megusta: meGusta));
  }

}