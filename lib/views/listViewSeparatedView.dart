import 'package:dojo_flutter_api_listas/helper/apiHelper.dart';
import 'package:dojo_flutter_api_listas/model/post.dart';

import 'package:flutter/material.dart';

class ListViewSeparatedView extends StatefulWidget {
  @override
  LlistViewSeparatedViewState createState() => LlistViewSeparatedViewState();
}

class LlistViewSeparatedViewState extends State<ListViewSeparatedView> {
  List<Postagem> _listaPostagem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("ListView Separeted"),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
          future: _carregaPosts(),
          builder: (context, snapshot) {
            return ListView.separated(
              padding: EdgeInsets.all(14),
              itemCount: _listaPostagem?.length ?? 0,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_listaPostagem[index].titulo),
                  trailing: Icon(Icons.comment),
                );
              },
              separatorBuilder: (context, index) {
                return Image.network(
                  "https://mensagenseatividades.com/wp-content/uploads/2017/06/mensagens-de-segunda-feira.jpg",
                  height: 160,
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
