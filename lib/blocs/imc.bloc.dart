import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc {
  var alturaCtrl = new MaskedTextController(mask: '000');
  var pesoCtrl = new MaskedTextController(mask: '000');
  var result = "Preencha os dados para calcular seu IMC";

  calculate() {
    double altura = double.parse(alturaCtrl.text);
    double peso = double.parse(pesoCtrl.text);
    double imc = peso / (altura * altura);

    if (imc < 18.6) {
      result = "Abaixo do Peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 18.6 && imc <= 24.9) {
      result = "Peso Ideal (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 24.9 && imc <= 29.9) {
      result = "Levemente acima do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 24.9 && imc <= 34.9) {
      result = "Obesidade Grau I (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 34.9 && imc <= 39.9) {
      result = "Obesidade Grau II (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 40) {
      result = "Obesidade Grau III (${imc.toStringAsPrecision(2)})";
    }
  }
}