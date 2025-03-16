class Camera {
  int _id;
  String _marca;
  String _cor;
  double _preco;

  Camera(this._id, this._marca, this._cor, this._preco);

  int get id => _id;
  String get marca => _marca;
  String get cor => _cor;
  double get preco => _preco;

  set id(int novoId) => _id = novoId;
  set marca(String novaMarca) => _marca = novaMarca;
  set cor(String novaCor) => _cor = novaCor;
  set preco(double novoPreco) => _preco = novoPreco;

  void mostrarDetalhes() {
    print("ID: \$id, Marca: \$marca, Cor: \$cor, Preço: R\$ \$preco");
  }
}

void main() {
  Camera camera1 = Camera(1, "Canon", "Preta", 2500.00);
  Camera camera2 = Camera(2, "GoPro", "Preta", 4400.00);
  Camera camera3 = Camera(3, "Kodak", "Cinza", 2800.00);

  List<Camera> cameras = [camera1, camera2, camera3];

  for (var camera in cameras) {
    camera.mostrarDetalhes();
  }
}
