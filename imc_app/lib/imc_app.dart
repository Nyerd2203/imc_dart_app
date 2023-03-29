import 'package:imc_app/pessoa.dart';

class IMC extends Pessoa {
  IMC(super._nome, super._altura, super._peso);

  double imcTotal() => double.parse(
      (getPeso() / (getAltura() * getAltura())).toStringAsFixed(2));

  String imcResult() {
    if (imcTotal() < 16) {
      return "Magreza Grave";
    } else if (imcTotal() == 16 && imcTotal() < 17) {
      return "Magreza Moderada";
    } else if (imcTotal() == 17 || imcTotal() < 18.5) {
      return "Magreza Leve";
    } else if (imcTotal() == 18.5 || imcTotal() < 25) {
      return "Saudável";
    } else if (imcTotal() == 25 || imcTotal() < 30) {
      return "Sobrepeso";
    } else if (imcTotal() == 30 || imcTotal() < 35) {
      return "Obesidade Grau I";
    } else if (imcTotal() == 35 || imcTotal() < 40) {
      return "Obesidade Grau II";
    } else if (imcTotal() >= 40) {
      return "Obesidade Grau II";
    } else {
      return "";
    }
  }

  @override
  String calcularImc() {
    try {
      print("Olá ${getNome()}");

      String result = {
        "nome": getNome(),
        "altura": getAltura(),
        "peso": getPeso(),
        "imc": imcTotal(),
        "resultado": imcResult()
      }.toString();

      print(result);

      return result;
    } catch (e) {
      return e.toString();
    }
  }
}
