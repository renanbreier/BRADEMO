class Animal {
  int _id;
  String _nome;
  String _cor;

  Animal(this._id, this._nome, this._cor);

  int get id => _id;
  String get nome => _nome;
  String get cor => _cor;

  set id(int novoId) => _id = novoId;
  set nome(String novoNome) => _nome = novoNome;
  set cor(String novaCor) => _cor = novaCor;

  void mostrarDetalhes() {
    print("ID: \$id, Nome: \$nome, Cor: \$cor");
  }
}

class Cat extends Animal {
  String _som;

  Cat(int id, String nome, String cor, this._som) : super(id, nome, cor);

  String get som => _som;

  set som(String novoSom) => _som = novoSom;

  @override
  void mostrarDetalhes() {
    super.mostrarDetalhes();
    print("Som: \$som");
  }
}

void main() {
  Cat cat1 = Cat(1, "Linda", "Branco", "Miau");
  Cat cat2 = Cat(2, "Lili", "Laranja", "Miau");
  Cat cat3 = Cat(3, "Tom", "Cinza", "Miau");

  List<Cat> gatos = [cat1, cat2, cat3];

  for (var gato in gatos) {
    gato.mostrarDetalhes();
  }
}