/// Esta clase representa una matriz 5x5 y proporciona métodos para asignar valores y calcular valores
/// en la matriz.
class Matriz {
  final List<List<int>> _matriz;

  /// Construye una matriz 5x5 con todos los elementos inicializados a 0.
  Matriz() : _matriz = List.generate(5, (i) => List<int>.filled(5, 0));

  /// Asigna un valor a una celda específica en la matriz.
  ///
  /// [fila] es el número de fila (0-4) donde se debe asignar el valor.
  /// [columna] es el número de columna (0-4) donde se debe asignar el valor.
  /// [numero] es el valor que se asignará a la celda.
  void asignarValor(int fila, int columna, int numero) {
    _matriz[fila - 1][columna - 1] = numero;
  }

  /// Calcula y asigna valores en la matriz de acuerdo con las reglas del problema.
  ///
  /// [fila] es el número de fila (0-4) donde se debe comenzar el cálculo.
  /// [columna] es el número de columna (0-4) donde se debe comenzar el cálculo.
  /// [numero] es el valor inicial para el cálculo.
  void calcularValores(int fila, int columna, int numero) {
    asignarValor(fila, columna, numero);
    asignarValoresEnFormaHorizontal(fila, columna, numero);
    asignarValoresEnFormaVertical(fila, columna, numero);
  }

  /// Asigna valores en forma horizontal en la fila actual de la matriz.
  void asignarValoresEnFormaHorizontal(int fila, int columna, int numero) {
    for (int i = 0; i < 5; i++) {
      if (i != columna - 1) {
        _matriz[fila - 1][i] = numero - (columna - 1 - i);
      }
    }
  }

  /// Asigna valores en forma vertical en la columna actual de la matriz.
  void asignarValoresEnFormaVertical(int fila, int columna, int numero) {
    for (int i = 0; i < 5; i++) {
      if (i != fila - 1) {
        _matriz[i][columna - 1] = numero - (fila - 1 - i);
      }
    }
  }

  /// Obtiene la matriz actual.
  List<List<int>> obtenerMatriz() {
    return _matriz;
  }

  /// Muestra la matriz en la consola con un formato legible.
  void mostrarMatriz(List<List<int>> matriz) {
    for (var fila in matriz) {
      String filaStr = fila.map((number) {
        return number.toString().padLeft(3); // Ajusta el ancho a 3 caracteres
      }).join(' ');
      print(filaStr);
    }
  }
}
