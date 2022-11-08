import 'package:dio/dio.dart';
import 'dart:convert';

class Client{
  Client({this.userID, this.id, this.title, this.body});

  int? userID;
  int? id;
  String? title;
  String? body;
}

class ClientsRepository {
  final List<Client> _clients = [];

  Future<List<Client>> loadClients() async{

    try{
      var response = await Dio().get("https://jsonplaceholder.typicode.com/posts?_start=0&_limit=20",);
      print(response.data);
      var jsonResponse = response.data;
      var data = jsonResponse;
      print(data);

      data.forEach((element) {
        _clients.add(Client(
          userID: element["userId"], id: element["id"],
          title: element["title"], body: element["body"],
        ));
      });

      print(_clients.length);
    } catch (e){
      print("Request Error: $e");
    }
    
    return _clients;
  }
}