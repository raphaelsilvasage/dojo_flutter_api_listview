import 'dart:convert';
import 'package:dojo_flutter_api_listas/model/perfil.dart';
import 'package:dojo_flutter_api_listas/model/post.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  //String urlPerfilGET = "https://my-json-server.typicode.com/raphaelsilvasage/dojo_flutter_api_listview/perfil";
  String _host = "https://my-json-server.typicode.com/raphaelsilvasage/dojo_flutter_api_listview";
  String _verboPerfil = "perfil";
  String _verboPosts = "posts";
  String _verboComentarios = "comentarios";

  ApiHelper();

  Future<Perfil> perfilGET() async {
    String endpointPergilGET = "$_host/$_verboPerfil";
    Perfil perfilRetorno;

    http.Response response = await http.get(endpointPergilGET);

    int statusCode = response.statusCode;
    if (statusCode < 200 || statusCode > 400) {
      throw new Exception("Erro ao recuperar dados");
    } else {
      Map<String, dynamic> perfilMap = json.decode(response.body);
      if (perfilMap != null) {
        perfilRetorno = Perfil.fromJson(perfilMap);
      }
    }

    return perfilRetorno;
  }

  Future<List<Postagem>> postagemGET() async {
    String endpointPostagemGET = "$_host/$_verboPosts";
    List<Postagem> postagensRetorno = List<Postagem>();

    http.Response response = await http.get(endpointPostagemGET);

    int statusCode = response.statusCode;
    if (statusCode < 200 || statusCode > 400) {
      throw new Exception("Erro ao recuperar dados");
    } else {
      List<dynamic> postagemMapList = json.decode(response.body);
      if (postagemMapList != null) {
        for (var postDynamic in postagemMapList) {
          Postagem postagem = Postagem.fromJson(postDynamic);
          postagensRetorno.add(postagem);
        }

        // postagemMapList.forEach((postDynamic) {
        //   Postagem postagem = Postagem.fromJson(postDynamic);
        //   postagensRetorno.add(postagem);
        // });
      }
    }

    return postagensRetorno;
  }
}
