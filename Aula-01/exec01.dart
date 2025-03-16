class Laptop {
  int _id;
  String _nome;
  String _ram;

  Laptop(this._id, this._nome, this._ram);

  int get id => _id;
  String get nome => _nome;
  String get ram => _ram;

  set id(int novoId) => _id = novoId;
  set nome(String novoNome) => _nome = novoNome;
  set ram(String novaRam) => _ram = novaRam;

  void mostrarDetalhes() {
    print("ID: \$id, Nome: \$nome, RAM: \$ram");
  }
}

void main() {
  Laptop laptop1 = Laptop(1, "Dell Inspiron", "16GB");
  Laptop laptop2 = Laptop(2, "Asus book", "32GB");
  Laptop laptop3 = Laptop(3, "Samsung", "8GB");


  laptop1.mostrarDetalhes();
  laptop2.mostrarDetalhes();
  laptop3.mostrarDetalhes();
}
