// import 'package:imc_app/imc_app.dart';
// import 'package:test/test.dart';

import 'package:imc_app/imc_app.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('calculateTotalImc', () {
    expect(
        IMC(
          "Everson",
          1.68,
          78.5,
        ).imcTotal(),
        equals(27.81));
  });

  test('calculateImc', () {
    var imc = IMC(
      "Everson",
      1.68,
      78.5,
    );
    expect(
        imc.calcularImc(),
        {
          "nome": "Everson",
          "altura": 1.68,
          "peso": 78.5,
          "imc": imc.imcTotal(),
          "resultado": imc.imcResult()
        }.toString());
  });
}
