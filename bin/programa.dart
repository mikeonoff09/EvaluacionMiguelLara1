import 'dart:io';

import 'matriz.dart'; // Asegúrate de importar la clase Matriz desde el archivo correspondiente

class Programa {
  Matriz matriz;

  /// Constructor de la clase Programa que inicializa una instancia de Matriz.
  Programa() : matriz = Matriz();

  /// Método principal que inicia el programa.
  void iniciar() {
    int numero = -1, fila = -1, columna = -1;

    // Ingreso de datos
    print("Ingrese un número: ");
    try {
      numero = int.parse(stdin.readLineSync() ?? '-1');
    } catch (e) {
      print('Error recuperando el número');
    }

    print("Ingrese la fila (0-4): ");
    try {
      fila = int.parse(stdin.readLineSync() ?? '-1');
    } catch (e) {
      print('Error al recuperar el número, ingrese un número válido');
    }

    print("Ingrese la columna (0-4): ");
    columna = int.parse(stdin.readLineSync() ?? '-1');

    // Validación de límites
    if (fila < 0 || fila > 4 || columna < 0 || columna > 4) {
      print("La ubicación está fuera de los límites de la matriz.");
      return;
    }

    // Calcular y asignar valores en la matriz
    matriz.calcularValores(fila, columna, numero);

    print("============");

    // Mostrar la matriz resultante
    matriz.mostrarMatriz(matriz.obtenerMatriz());
  }
}
