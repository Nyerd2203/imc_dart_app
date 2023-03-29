import 'dart:io';

import 'package:imc_app/imc_app.dart' as imc_app;

void main(List<String> arguments) {
  print("Seja muito bem vindo a calculadora de IMC!");
  stdout.write("Para iniciarmos digite seu nome: ");
  String nome = stdin.readLineSync() ?? "";

  stdout.write("Digite seu peso: ");
  String peso = stdin.readLineSync() ?? "0";

  stdout.write("Digite sua altura: ");
  String altura = stdin.readLineSync() ?? "0";

  imc_app
      .IMC(
        nome,
        double.parse(altura),
        double.parse(peso),
      )
      .calcularImc();
}
