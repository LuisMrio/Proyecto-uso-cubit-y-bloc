class User {
  final String nombre;
  final int numero;

  User({required this.nombre, required this.numero});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(nombre: json['nombre'], numero: json['numero']);
  }
}
