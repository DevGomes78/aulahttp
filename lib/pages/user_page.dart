import 'package:aulahttp/models/user.dart';
import 'package:aulahttp/repository/user_repository.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<Data> lista = [];

  @override
  void initState() {
    super.initState();
    UserTepository().GetUser().then((map) {
      setState(() {
        lista = map;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuarios'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: lista.isEmpty ? 0 : lista.length,
            itemBuilder: (context, index) {
              var list = lista[index];
              return Card(
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      list.avatar.toString(),
                    ),
                  ),
                  title: Text(
                    list.firstName.toString(),
                  ),
                  subtitle: Text(
                    list.email.toString(),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
