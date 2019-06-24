import 'package:dojo_flutter_api_listas/helper/apiHelper.dart';
import 'package:dojo_flutter_api_listas/model/perfil.dart';
import 'package:dojo_flutter_api_listas/model/post.dart';
import 'package:flutter/material.dart';

class ConsumoAPIVIew extends StatefulWidget {
  @override
  _ConsumoAPIVIewState createState() => _ConsumoAPIVIewState();
}

class _ConsumoAPIVIewState extends State<ConsumoAPIVIew> {
  String _resultadoConsumoAPI = "";
  bool _carregandoDados = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Consumo de API"),
        centerTitle: true,
      ),
      body: Center(
        child: _carregandoDados ? _widgetCarregandoDados() : _widgetConsumirApi(),
      ),
    );
  }

  void _consumirAPI() async {
    setState(() {
      _carregandoDados = true;
    });

    ApiHelper apiHelper = ApiHelper();
    Perfil perfilRetorno = await apiHelper.perfilGET();
    print(perfilRetorno.nomePessoa);

    setState(() {
      _resultadoConsumoAPI = perfilRetorno.toString();
    });

    List<Postagem> postagemRetorno = await apiHelper.postagemGET();
    postagemRetorno.forEach((postagem) => print(postagem.titulo));

    setState(() {
      _carregandoDados = false;
    });
  }

  Widget _widgetCarregandoDados() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircularProgressIndicator(),
        SizedBox(height: 20),
        Text("Por favor, aguarde"),
      ],
    );
  }

  Widget _widgetConsumirApi() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("Consumir API"),
          onPressed: _consumirAPI,
        ),
        Text(_resultadoConsumoAPI, maxLines: 20),
      ],
    );
  }
}
