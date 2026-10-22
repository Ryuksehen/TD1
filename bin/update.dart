import 'dart:io';
import '../lib/producto.dart';
import 'list.dart';

void actualizarProducto(List<Producto> catalogo) {
  print('\n--- ACTUALIZAR PRODUCTO ---');

  if (catalogo.isEmpty) {
    print('No hay productos registrados para actualizar.');
    return;
  }

  // Mostrar el catálogo para que el usuario vea los índices
  listarProductos(catalogo);

  // Solicitar el índice del producto a actualizar
  int? indice;

  while (indice == null || indice < 1 || indice > catalogo.length) {
    stdout.write(
      '\nIngresa el índice del producto a actualizar (1-${catalogo.length}): ',
    );
    String entradaIndice = stdin.readLineSync() ?? '';

    indice = int.tryParse(entradaIndice.trim());

    if (indice == null || indice < 1 || indice > catalogo.length) {
      print('Índice inválido. Ingresa un número entre 1 y ${catalogo.length}.');
    }
  }

  Producto producto = catalogo[indice - 1];

  print('\nPresiona Enter sin escribir nada para mantener el valor actual.');

  // Solicitar el nuevo nombre (opcional)
  while (true) {
    stdout.write('Nombre [${producto.nombre}]: ');
    String nombre = (stdin.readLineSync() ?? '').trim();

    if (nombre.isEmpty) break;

    // Validar que el nombre solo contenga letras y espacios
    if (RegExp(r'^[a-zA-ZáéíóúÁÉÍÓÚñÑüÜ ]+$').hasMatch(nombre)) {
      producto.nombre = nombre;
      break;
    }

    print(
      'Por favor, ingresa un nombre válido. '
      'Usa únicamente letras y espacios.',
    );
  }

  // Solicitar el nuevo precio (opcional)
  while (true) {
    stdout.write('Precio [${producto.precio}]: ');
    String entradaPrecio = (stdin.readLineSync() ?? '').trim();

    if (entradaPrecio.isEmpty) break;

    int? precio = int.tryParse(entradaPrecio);

    if (precio != null && precio > 0) {
      producto.precio = precio;
      break;
    }

    print(
      'Por favor, ingresa únicamente números enteros '
      'mayores que 0 para el precio.',
    );
  }

  // Solicitar la nueva cantidad (opcional)
  while (true) {
    stdout.write('Cantidad disponible [${producto.cantidad}]: ');
    String entradaCantidad = (stdin.readLineSync() ?? '').trim();

    if (entradaCantidad.isEmpty) break;

    int? cantidad = int.tryParse(entradaCantidad);

    if (cantidad != null && cantidad >= 0) {
      producto.cantidad = cantidad;
      break;
    }

    print(
      'Por favor, ingresa una cantidad válida usando '
      'solo números enteros iguales o mayores que 0.',
    );
  }

  print('\n¡Producto actualizado correctamente!');
  print('Nombre: ${producto.nombre}');
  print('Precio: ${producto.precio}');
  print('Cantidad disponible: ${producto.cantidad}');
}
