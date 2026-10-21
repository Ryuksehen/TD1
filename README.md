# Taller 1: Dart + Gitflow — Sistema de Gestión de Inventario

¡Bienvenido al **Taller 1**! Este proyecto consiste en una aplicación de consola desarrollada en Dart para **gestionar el catálogo de productos de una tienda** mediante un sistema CRUD (Crear, Leer, Actualizar, Eliminar). 

El desarrollo se ha estructurado aplicando buenas prácticas de programación y la metodología de trabajo colaborativo **Gitflow**.

---

## 🎯 Objetivos

- **Objetivo General:** Desarrollar una aplicación funcional en Dart desde la consola para la gestión de productos, reforzando el uso de estructuras de datos y flujos de control. Permitiendo crear, listar, actualizar y eliminar productos, utilizando:

---

## ⚙️ ¿Cómo funciona la aplicación?

La aplicación se ejecuta completamente desde la terminal y simula el inventario de una tienda a través de un bucle continuo. Cada producto se almacena internamente como un `Map<String, dynamic>` dentro de una `List`.

### Menú Principal y Funcionalidades:

1. **Agregar producto:** Solicita el nombre, precio y cantidad disponible. Crea un nuevo registro y lo añade a la lista general.
2. **Listar productos:** Recorre la lista de productos y los muestra en pantalla con un formato legible, incluyendo un número de índice para su fácil identificación.
3. **Actualizar producto:** Solicita el índice del producto que se desea modificar. Permite actualizar campos individuales (Nombre, Precio o Cantidad); si el usuario deja un campo vacío, este conserva su valor anterior.
4. **Eliminar producto:** Solicita el índice del producto y lo remueve permanentemente de la lista.
5. **Salir:** Rompe el ciclo de ejecución y finaliza el programa de forma segura.

> ⚠️ **Validación de Errores:** El sistema cuenta con control de excepciones básico para evitar caídas del programa ante ingresos de datos vacíos, tipos de datos incorrectos (letras en campos de números) o índices fuera de rango.

---

## 🚀 Cómo ejecutar el proyecto

Sigue estos pasos para clonar y correr la aplicación en tu entorno local:

### Prerrequisitos
Tener instalado el SDK de Dart en tu máquina. Si no lo tienes, puedes descargarlo desde [dart.dev](https://dart.dev).

### Pasos para la ejecución:

1. **Clonar el repositorio:**
   ```bash
   git clone <URL_DE_TU_REPOSITORIO>
   cd TallerDart1
   ```



2. **Ejecutar la aplicación:**
   ```bash
   dart run bin/main.dart
   ```
   
---

## 🌿 Flujo de Trabajo (Gitflow & Commits)

Para garantizar un desarrollo organizado y colaborativo, se utilizó la metodología **Gitflow**:

- **`main`**: Rama que contiene el código completamente estable y listo para producción.
- **`develop`**: Rama de integración donde se consolidaron todas las características antes de pasar a la principal.
- **`feature/`**: Ramas independientes creadas para el desarrollo de módulos específicos (ej. `feature/add`, `feature/list`, `feature/etc`).

### Buenas Prácticas de Commits
Se aplicaron commits concretos y consistentes que agrupan módulos completos de trabajo (por ejemplo, asegurando que la opción de "Listar" o "Actualizar" funcionara en su totalidad antes de realizar el commit).

---

## 👥 Equipo de Desarrollo

* **Omar David Meneses Verona** - *SCRUM MASTER / Gestión de Gitflow* - [GitHub](https://github.com)
* **Alejandro Gomez** - *Desarrollador / Lógica de Negocio* - [GitHub](https://github.com)
* **Erick Camargo** - *Desarrollador / Lógica de Negocio* - [GitHub](https://github.com)
* **Gabriel Mosquera** - *Desarrollador / Lógica de Negocio* - [GitHub](https://github.com)
* **Samuel Marin** - *Desarrollador / Lógica de Negocio* - [GitHub](https://github.com)
