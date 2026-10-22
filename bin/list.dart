import '../lib/producto.dart';

void listarProductos(List<Producto> catalogo) {
  print('\n--- LISTA DE PRODUCTOS ---');

  if (catalogo.isEmpty) {
    print('No hay productos registrados.');
    return;
  }

  print(
    '${'Indice'.padRight(8)}${'Nombre'.padRight(22)}${'Precio'.padRight(12)}Cantidad',
  );
  print('------------------------------------------------------');

  for (int i = 0; i < catalogo.length; i++) {
    Producto p = catalogo[i];
    print(
      '${(i + 1).toString().padRight(8)}'
      '${p.nombre.padRight(22)}'
      '${p.precio.toString().padRight(12)}'
      '${p.cantidad}',
    );
  }

  print('\nTotal de productos: ${catalogo.length}');
}
