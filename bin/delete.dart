import 'dart:io';

import '../lib/producto.dart';
import 'list.dart';

void eliminarProducto(List<Producto> catalogo) {
  print(' ELIMINAR PRODUCTO ');

  if (catalogo.isEmpty) {
    print('No hay productos registrados para eliminar.');
    return;
  }

  listarProductos(catalogo);

  int? indice;
  while (indice == null || indice < 1 || indice > catalogo.length) {
    stdout.write(
      '\nIngresa el índice del producto a eliminar (1-${catalogo.length}): ',
    );
    final entradaIndice = stdin.readLineSync() ?? '';
    indice = int.tryParse(entradaIndice.trim());

    if (indice == null || indice < 1 || indice > catalogo.length) {
      print('Índice inválido. Ingresa un número entre 1 y ${catalogo.length}.');
    }
  }

  final productoEliminado = catalogo.removeAt(indice - 1);
  print('\n¡Producto eliminado correctamente!');
  print('Producto eliminado: ${productoEliminado.nombre}');
} 