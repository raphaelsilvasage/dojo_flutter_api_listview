import 'package:dojo_flutter_api_listas/views/consumoAPIView.dart';
import 'package:dojo_flutter_api_listas/views/listViewSimples.dart';
import 'package:flutter/material.dart';

class PrincipalView extends StatefulWidget {
  @override
  _PrincipalViewState createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Dojo Flutter API e Lista"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Consumo de API"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ConsumoAPIVIew()));
              },
            ),
            RaisedButton(
              child: Text("ListView"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListViewSimplesView()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
