
import 'dart:io';
import '../lib/producto.dart';

void agregarProducto(List<Producto> catalogo) {
  print('\n--- AGREGAR PRODUCTO ---');

  // Solicitar el nombre del producto
  stdout.write('Por favor, ingresa el nombre del producto: ');
  String nombre = stdin.readLineSync() ?? '';

  // Validar que el nombre solo contenga letras y espacios
  while (!RegExp(r'^[a-zA-ZáéíóúÁÉÍÓÚñÑüÜ ]+$')
      .hasMatch(nombre.trim())) {
    print(
      'Por favor, ingresa un nombre válido. '
      'Usa únicamente letras y espacios.',
    );

    stdout.write('Nombre del producto: ');
    nombre = stdin.readLineSync() ?? '';
  }

  // Solicitar el precio del producto
  int? precio;

  while (precio == null || precio <= 0) {
    stdout.write('Por favor, ingresa el precio del producto: ');
    String entradaPrecio = stdin.readLineSync() ?? '';

    precio = int.tryParse(entradaPrecio);

    if (precio == null || precio <= 0) {
      print(
        'Por favor, ingresa únicamente números enteros '
        'mayores que 0 para el precio.',
      );
    }
  }

  // Solicitar la cantidad disponible
  int? cantidad;

  while (cantidad == null || cantidad < 0) {
    stdout.write('Por favor, ingresa la cantidad disponible: ');
    String entradaCantidad = stdin.readLineSync() ?? '';

    cantidad = int.tryParse(entradaCantidad);

    if (cantidad == null || cantidad < 0) {
      print(
        'Por favor, ingresa una cantidad válida usando '
        'solo números enteros iguales o mayores que 0.',
      );
    }
  }

  // Crear el producto con los datos ingresados
  Producto nuevoProducto = Producto(
    nombre.trim(),
    precio,
    cantidad,
  );

  // Agregar el producto al catálogo
  catalogo.add(nuevoProducto);

  print('\n¡Producto agregado correctamente!');
  print('Nombre: ${nuevoProducto.nombre}');
  print('Precio: ${nuevoProducto.precio}');
  print('Cantidad disponible: ${nuevoProducto.cantidad}');
}


