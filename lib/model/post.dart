class Postagem{
  int id;
  String titulo;

  Postagem(this.id, this.titulo);

  Postagem.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    titulo = json["titulo"];
  }
}