import 'package:flutter/material.dart';

class ListViewSimplesView extends StatefulWidget {
  @override
  _ListViewSimplesViewState createState() => _ListViewSimplesViewState();
}

class _ListViewSimplesViewState extends State<ListViewSimplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("ListView Simples"),
          centerTitle: true,
        ),
        body: Center(
          child: ListView(children: <Widget>[
            ListTile(
              title: Text("Título 01"),
              trailing: Icon(Icons.cake, color: Colors.blue),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.call, color: Colors.red),
                Text("Olá ListView DOJO!"),
                Icon(Icons.call, color: Colors.purple),
              ],
            ),
            Text("Item 03", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 04", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 05", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 06", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 07", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 08", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 09", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 10", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 11", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 12", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 13", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 03", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 03", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 03", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 03", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 03", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 03", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 03", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 03", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 03", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 03", style: TextStyle(fontSize: 40, color: Colors.orange)),
            Text("Item 03", style: TextStyle(fontSize: 40, color: Colors.orange)),
          ]),
        ));
  }
}
