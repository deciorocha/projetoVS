import 'package:flutter/foundation.dart';
import 'package:agenda_crud/app/database/script.dart';
import 'package:agenda_crud/app/my_app.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ContactList extends StatelessWidget {
  final lista = [
    {
      'nome': 'Pietro',
      'telefone': '(11) 9 9874-5656',
      'avatar':
          'https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819_960_720.png'
    },
    {
      'nome': 'Maitê',
      'telefone': '(11) 9 9632-8578',
      'avatar':
          'https://cdn.pixabay.com/photo/2014/04/03/10/32/user-310807_960_720.png'
    },
    {
      'nome': 'Hortência',
      'telefone': '(11) 9 9562-3356',
      'avatar':
          'https://cdn.pixabay.com/photo/2014/04/03/10/32/user-310807_960_720.png'
    },
  ];

  Future<List<Map<String, dynamic>>> buscar() async {
    String path = join(await getDatabasesPath(), 'banco');
    Database db = await openDatabase(path, version: 1, onCreate: (db, v) {
      db.execute(createTable);
      db.execute(insertRegistros);
    });
    return db.query('contact');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: buscar(),
        builder: (context, futuro) {
          if (futuro.hasData) {
            var lista = futuro.data as List<Map<String, dynamic>>;
            return Scaffold(
                appBar: AppBar(
                  title: Text('Lista de Contatos'),
                  actions: [
                    IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          Navigator.of(context).pushNamed(MyApp.CONTACT_FORM);
                        })
                  ],
                ),
                body: ListView.builder(
                  itemCount: lista.length,
                  itemBuilder: (context, i) {
                    var contato = lista[i];
                    return ListTile(
                      title: Text(contato['nome']),
                      subtitle: Text(contato['telefone']),
                      trailing: Container(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: null,
                            ),
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: null,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ));
          } else {
            return Scaffold();
          }
        });
  }
}
