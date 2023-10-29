import 'package:test/test.dart';

import '../bin/matriz.dart';

void main() {
  test('Asignar y obtener valor', () {
    final matriz = Matriz();
    matriz.asignarValor(2, 3, 42);
    expect(matriz.obtenerMatriz()[1][2], equals(42));
  });

  test('Calcular valores en forma horizontal', () {
    final matriz = Matriz();
    matriz.calcularValores(3, 3, 5);
    final result = matriz.obtenerMatriz();
    expect(result[2], equals([3, 4, 5, 6, 7]));
  });

  test('Calcular valores en forma vertical', () {
    final matriz = Matriz();
    matriz.calcularValores(4, 2, 10);
    final result = matriz.obtenerMatriz();
    expect(result.map((fila) => fila[1]), equals([7,8,9,10,11]));
  });
}
