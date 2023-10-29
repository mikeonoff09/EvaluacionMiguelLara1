class Matriz {
  final List<List<int>> _matriz;

  Matriz() : _matriz = List.generate(5, (i) => List<int>.filled(5, 0));

  void asignarValor(int fila, int columna, int numero) {
    _matriz[fila - 1][columna - 1] = numero;
  }

  void calcularValores(int fila, int columna, int numero) {
    asignarValor(fila, columna, numero);
    asignarValoresEnFormaHorizontal(fila, columna, numero);
    asignarValoresEnFormaVertical(fila, columna, numero);
  }

  void asignarValoresEnFormaHorizontal(int fila, int columna, int numero) {
    for (int i = 0; i < 5; i++) {
      if (i != columna - 1) {
        _matriz[fila - 1][i] = numero - (columna - 1 - i);
      }
    }
  }

  void asignarValoresEnFormaVertical(int fila, int columna, int numero) {
    for (int i = 0; i < 5; i++) {
      if (i != fila - 1) {
        _matriz[i][columna - 1] = numero - (fila - 1 - i);
      }
    }
  }

  List<List<int>> obtenerMatriz() {
    return _matriz;
  }

  void mostrarMatriz(List<List<int>> matriz) {
    for (var fila in matriz) {
      String filaStr = fila.map((number) {
        return number.toString().padLeft(3); // Ajusta el ancho a 3 caracteres
      }).join(' ');
      print(filaStr);
    }
  }
}
