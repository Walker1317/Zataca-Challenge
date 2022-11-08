import 'package:flutter/material.dart';
import 'package:zataca_challenge/bloc/megusta/megusta_bloc.dart';
import 'package:zataca_challenge/bloc/megusta/megusta_event.dart';
import 'package:zataca_challenge/bloc/megusta/megusta_repository.dart';
import 'package:zataca_challenge/bloc/megusta/megusta_state.dart';

class MeGustaTile extends StatefulWidget {
  const MeGustaTile({super.key});

  @override
  State<MeGustaTile> createState() => _MeGustaTileState();
}

class _MeGustaTileState extends State<MeGustaTile> {
  late final MegustaBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = MegustaBloc();
    bloc.inputMegusta.add(RemoveMegustaEvent(meGusta: MeGusta(megusta: false)));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MegustaState>(
      stream: bloc.stream,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Container();
          case ConnectionState.active:
          case ConnectionState.done:

            final meGusta = snapshot.data?.megusta;
            return Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      if(meGusta.megusta! == false){
                        bloc.inputMegusta.add(AddMegustaEvent(meGusta: MeGusta(megusta: false)));
                      } else {
                        bloc.inputMegusta.add(RemoveMegustaEvent(meGusta: MeGusta(megusta: true)));
                      }
                    },
                    child: Icon(meGusta!.megusta! ? Icons.favorite : Icons.favorite_border_outlined, color: meGusta.megusta! ? Colors.red : Colors.grey,)
                  ),
                  const SizedBox(width: 5,),
                  Text(meGusta.megusta! ? "1" : "0"),
                  const SizedBox(width: 10,),
                  const Text("Me gusta"),
                ],
              ),
            );

          default:
        }

        return Container();
      }
    );
  }
}