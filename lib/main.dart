import 'dart:io';

import 'producto.dart';
import '../bin/add.dart'; // importacion del agregar
import '../bin/list.dart'; // importacion del listar

void main() {
  List<Producto> catalogo = [];

  bool estado = true;

  while (estado) {
    print('\n===== Catalogo de Producto ====');
    print('1. Agregar Producto');
    print('2. Ver Producto');
    print('3. Actualizar Producto');
    print('4. Eliminar Producto');
    print('5. Salir');
    stdout.write('Elige una opción: ');

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        agregarProducto(catalogo);

        break;
      case '2':
        listarProductos(catalogo);

        break;
      case '3':
        // Funcion de Agregar update(catalogo) Alejandro

        break;
      case '4':
        // Funcion de Agregar delete(catalogo) Samuel

        break;
      case '5':
        // Funcion de Agregar add(catalogo) Scrum Master

        break;

      default:
        print('Opcion invalida, intenta con una opcion correcta.');
    }
  }
}
