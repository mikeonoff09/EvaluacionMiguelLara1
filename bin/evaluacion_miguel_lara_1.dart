import 'dart:io';

void main() {
  int numero, fila, columna;

  print("Ingrese un número: ");
  numero = int.parse(stdin.readLineSync() ?? '');

  print("Ingrese la fila (0-4): ");
  fila = int.parse(stdin.readLineSync() ?? '');

  print("Ingrese la columna (0-4): ");
  columna = int.parse(stdin.readLineSync() ?? '');

  if (fila < 0 || fila > 4 || columna < 0 || columna > 4) {
    print("La ubicación está fuera de los límites de la matriz.");
    return;
  }

  final matriz = generarMatriz(fila, columna, numero);

  print("============");

  mostrarMatriz(matriz);
}

void mostrarMatriz(List<List<int>> matriz) {
  for (var fila in matriz) {
    print(fila);
  }
}


List<List<int>> generarMatriz(int fila, int columna, int numero) {
  List<List<int>> matriz = List.generate(5, (i) => List<int>.filled(5, 0));

  matriz[fila - 1][columna - 1] = numero;

  // Asignar valores en forma horizontal
  for (int i = 0; i < 5; i++) {
    if (i != columna - 1) {
      matriz[fila - 1][i] = numero - (columna - 1 - i);
    }
  }

  // Asignar valores en forma vertical
  for (int i = 0; i < 5; i++) {
    if (i != fila - 1) {
      matriz[i][columna - 1] = numero - (fila - 1 - i);
    }
  }
  return matriz;
}

