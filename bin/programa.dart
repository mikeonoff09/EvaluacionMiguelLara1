import 'dart:io';

import 'matriz.dart';

class Programa {
  Matriz matriz;

  Programa() : matriz = Matriz();

  void iniciar() {
    int numero, fila, columna;

    // ingreso de datos
    print("Ingrese un número: ");
    numero = int.parse(stdin.readLineSync() ?? '');

    print("Ingrese la fila (0-4): ");
    fila = int.parse(stdin.readLineSync() ?? '');

    print("Ingrese la columna (0-4): ");
    columna = int.parse(stdin.readLineSync() ?? '');

    // validación
    if (fila < 0 || fila > 4 || columna < 0 || columna > 4) {
      print("La ubicación está fuera de los límites de la matriz.");
      return;
    }

    matriz.calcularValores(fila, columna, numero);

    print("============");

    matriz.mostrarMatriz(matriz.obtenerMatriz());
  }
}
