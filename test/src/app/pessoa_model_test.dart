import 'package:flutter_test/flutter_test.dart';
import 'package:imc_mvvm_flutter/src/app/pessoa_model.dart';

void main() {
  test('getImc deve retornar 21', () {
    final person = Pessoa(altura: 1.84, peso: 70);
    expect(person.getIMC().round(), 21);
  });
}
