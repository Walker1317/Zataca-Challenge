import 'package:flutter/material.dart';
import 'package:zataca_challenge/bloc/client/client_repository.dart';
import 'package:zataca_challenge/views/widgets/menu_button.dart';

class ListClients extends StatelessWidget {
  ListClients({super.key, required this.listClients});
  List<Client> listClients;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Prueba nivel flutter Zataca"),
        actions: const [
          MenuButton()
        ],
      ),
      body: ListView.builder(
        itemCount: listClients.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index){
          Client client = listClients[index];
          return Container(
            margin: EdgeInsets.fromLTRB(10, index == 0 ? 10 : 0 , 10, 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  blurRadius: 5,
                  spreadRadius: -3,
                  offset: const Offset(2, 2)
                ),
                BoxShadow(
                  color: Colors.grey[100]!,
                  blurRadius: 5,
                  spreadRadius: -3,
                  offset: const Offset(-2, -2)
                ),
              ],
            ),
            child: ListTile(
              leading: Text(client.id.toString(), style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 18),),
              title: Text(client.title!),
              subtitle: Text(client.body!),
              trailing: Text(client.userID.toString()),
            ),
          );
        }
      ),
    );
  }
}