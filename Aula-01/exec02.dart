class House {
  int _id;
  String _nome;
  double _preco;

  House(this._id, this._nome, this._preco);

  int get id => _id;
  String get nome => _nome;
  double get preco => _preco;

  set id(int novoId) => _id = novoId;
  set nome(String novoNome) => _nome = novoNome;
  set preco(double novoPreco) => _preco = novoPreco;

  void mostrarDetalhes() {
    print("ID: \$id, Nome: \$nome, Preço: R\$ \$preco");
  }
}

void main() {
  House house1 = House(1, "Casa Brasileira", 200000.00);
  House house2 = House(2, "Casa Italiana", 375000.00);
  House house3 = House(3, "Casa Americana", 500000.00);

  List<House> casas = [house1, house2, house3];

  for (var casa in casas) {
    casa.mostrarDetalhes();
  }
}
