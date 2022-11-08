import 'package:flutter/material.dart';
import 'package:zataca_challenge/bloc/client/cilent_event.dart';
import 'package:zataca_challenge/bloc/client/client_bloc.dart';
import 'package:zataca_challenge/bloc/client/client_state.dart';
import 'package:zataca_challenge/views/list_clients.dart';
import 'package:zataca_challenge/views/widgets/like.dart';
import 'package:zataca_challenge/views/widgets/menu_button.dart';
import 'package:zataca_challenge/views/widgets/table.dart';
import 'package:zataca_challenge/views/widgets/tabs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ClientBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = ClientBloc();
    bloc.inputClient.add(LoadClientEvent());
  }

  @override
  Widget build(BuildContext context) {

    TextStyle titleStyle(){
      return TextStyle(
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Prueba nivel flutter Zataca"),
        actions: const [
          MenuButton()
        ],
      ),
      body: StreamBuilder<ClientState>(
        stream: bloc.stream,
        builder: (context, AsyncSnapshot<ClientState> snapshot) {
          final clientsList = snapshot.data?.clients ?? [];
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset("images/lake2.png", fit: BoxFit.fitWidth,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const MeGustaTile(),
                      const Divider(),
                      Text("Primera parte", textAlign: TextAlign.start, style: titleStyle(),),
                      const SizedBox(height: 10,),
                      const Text("Vamos a mostrar dos tabs, que a su vez mostrarán información diferente en su interior."),
                      const SizedBox(height: 15,),
                      const TabsTile(),
                      const SizedBox(height: 15,),
                      Text("Segunda parte", textAlign: TextAlign.start, style: titleStyle(),),
                      const SizedBox(height: 10,),
                      const Text("Aquí vamos a mostrar una tabla, Debes de intentar dejarlo lo mas parecido posible, al igual que hacerla dinámica."),
                      const SizedBox(height: 15,),
                      const TablaTile(),
                      const SizedBox(height: 20,),
                      SizedBox(
                        height: 40,
                        child: ElevatedButton(
                          onPressed: (){
                            FocusScope.of(context).unfocus();
                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> ListClients(listClients: clientsList)));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(300)
                            )
                          ),
                          child: const Text(
                            "Ir a la seguinte vista",
                          ),
                        ),
                      ),
                      const SizedBox(height: 36),
                    ],
                  ),
                )
              ],
            ),
          );
        }
      ),
    );
  }
}