import 'package:dojo_flutter_api_listas/helper/apiHelper.dart';
import 'package:dojo_flutter_api_listas/model/perfil.dart';
import 'package:dojo_flutter_api_listas/model/post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ConsumoAPIVIew extends StatefulWidget {
  @override
  _ConsumoAPIVIewState createState() => _ConsumoAPIVIewState();
}

class _ConsumoAPIVIewState extends State<ConsumoAPIVIew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Consumo de API"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Consumir API"),
              onPressed: () async {
                ApiHelper apiHelper = ApiHelper();
                Perfil perfilRetorno = await apiHelper.perfilGET();
                print(perfilRetorno.nomePessoa);

                List<Postagem> postagemRetorno = await apiHelper.postagemGET();
                postagemRetorno.forEach((postagem) => print(postagem.titulo));
              },
            ),
            Text("", maxLines: 20),
          ],
        ),
      ),
    );
  }
}
