import 'package:dojo_flutter_api_listas/helper/apiHelper.dart';
import 'package:dojo_flutter_api_listas/model/post.dart';
import 'package:flutter/material.dart';

class ListViewBuilderView extends StatefulWidget {
  @override
  _ListViewBuilderViewState createState() => _ListViewBuilderViewState();
}

class _ListViewBuilderViewState extends State<ListViewBuilderView> {
  List<Postagem> _listaPostagem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("ListView Builder"),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
          future: _carregaPosts(),
          builder: (context, snapshot) {
            return ListView.builder(
              padding: EdgeInsets.all(14),
              itemCount: _listaPostagem.length ?? 0,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_listaPostagem[index].titulo),
                  trailing: Icon(Icons.comment),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Future<List<Postagem>> _carregaPosts() async {
    ApiHelper apiHelper = new ApiHelper();
    _listaPostagem = await apiHelper.postagemGET();
    return _listaPostagem;
  }
}
