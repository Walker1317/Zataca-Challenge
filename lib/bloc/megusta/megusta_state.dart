import 'package:zataca_challenge/bloc/megusta/megusta_repository.dart';

abstract class MegustaState{
  MeGusta megusta;

  MegustaState({required this.megusta});

}

class MegustaInitialState extends MegustaState{
  MegustaInitialState() : super(megusta: MeGusta());
}

class MegustaSuccessState extends MegustaState{
  MegustaSuccessState({required MeGusta megusta,}) : super(megusta: megusta);
}