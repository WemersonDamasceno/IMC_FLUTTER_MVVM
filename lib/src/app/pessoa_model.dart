class Pessoa {
  final double altura;
  final double peso;

  Pessoa({required this.altura, required this.peso});

  double getIMC() {
    return peso / (altura * altura);
  }
}
