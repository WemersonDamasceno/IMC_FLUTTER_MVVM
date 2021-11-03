import 'package:imc_mvvm_flutter/src/app/pessoa_model.dart';
import 'package:rx_notifier/rx_notifier.dart';

class HomeController {
  double _altura = 0.0;
  double _peso = 0.0;

  void setAltura(String value) => _altura = double.tryParse(value) ?? 0;
  void setPeso(String value) => _peso = double.tryParse(value) ?? 0;

  final _result = RxNotifier<String>('');
  String get getResult => _result.value;

  void calcularImc() {
    final imcResult = Pessoa(altura: _altura, peso: _peso).getIMC();
    final imcText = imcResult.toStringAsFixed(1);
    if (imcResult < 18) {
      _result.value = "O imc é $imcText e voce está magro!";
    } else if (imcResult > 18 && imcResult < 24) {
      _result.value = "O imc é $imcText e voce está bem!";
    } else {
      _result.value = "O imc é $imcText e voce está bem MAL!";
    }
  }
}
