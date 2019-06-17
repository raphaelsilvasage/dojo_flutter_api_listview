class Perfil{
  String nomePessoa;
  int idade;

  Perfil(this.nomePessoa, this.idade);

  Perfil.fromJson(Map<String, dynamic> json) {
    nomePessoa = json["nome"];
    idade = json["idade"];
  }
  
}