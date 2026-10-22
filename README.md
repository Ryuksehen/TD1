# Taller 1: Dart + Gitflow — Sistema de Gestión de Inventario

¡Bienvenido al **Taller 1**! Este proyecto consiste en una aplicación de consola desarrollada en Dart para **gestionar el catálogo de productos de una tienda** mediante un sistema CRUD (Crear, Listar, Actualizar, Eliminar) y salida segura. 

El desarrollo se encuentra modularizado y estructurado bajo buenas prácticas de programación colaborativa mediante la metodología **Gitflow**.

---

## 🎯 Objetivos

- **Objetivo General:** Desarrollar una aplicación funcional en consola con Dart para la gestión de inventario, reforzando el uso de estructuras de datos (`List`, `Map`), modularización de código y control de flujo.
- **Objetivos Específicos:**
  - Implementar un flujo de trabajo colaborativo estricto mediante Gitflow.
  - Modularizar cada funcionalidad CRUD en archivos independientes.
  - Asegurar la integridad del programa mediante manejo de excepciones y validaciones de entrada.

---

## 📁 Estructura del Proyecto

El código está organizado de manera modular separando los submódulos de ejecución y la lógica principal:

```text
TallerDart1/
├── bin/
│   ├── add.dart        # Módulo para agregar productos
│   ├── delete.dart     # Módulo para eliminar productos
│   ├── list.dart       # Módulo para listar productos
│   ├── quit.dart       # Módulo para salir de la aplicación
│   └── update.dart     # Módulo para actualizar productos
├── lib/
│   ├── main.dart       # Punto de entrada y ciclo del menú principal
│   └── producto.dart   # Estructura del modelo / plantilla de datos
├── .gitignore
└── README.md
```

---

## ⚙️ ¿Cómo funciona la aplicación?

La aplicación se ejecuta en bucle continuo dentro de la terminal. Los productos se administran en memoria como elementos `Map<String, dynamic>` estructurados dentro de una lista general.

### Módulos y Funcionalidades:

1. **Agregar producto (`add.dart`):** Solicita nombre, precio y cantidad disponible para registrar un nuevo producto en la lista.
2. **Listar productos (`list.dart`):** Itera y muestra los productos existentes con formato legible e índice numérico para su referencia.
3. **Actualizar producto (`update.dart`):** Permite modificar campos puntuales (nombre, precio, cantidad) de un producto existente manteniendo los datos previos si el usuario omite el valor.
4. **Eliminar producto (`delete.dart`):** Remueve de forma definitiva un elemento según su índice.
5. **Salir (`quit.dart`):** Finaliza el bucle de ejecución de forma limpia y segura.

> ⚠️ **Validación de Datos:** Se implementa control de excepciones para evitar caídas del sistema por entradas vacías, tipos de datos incompatibles o selección de índices inexistentes.

---

## 🚀 Cómo ejecutar el proyecto

### Prerrequisitos
Tener instalado el SDK de Dart en el equipo ([dart.dev](https://dart.dev)).

### Pasos:

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/Ryuksehen/TD1.git
   cd TallerDart1
   ```

2. **Ejecutar la aplicación:**
   ```bash
   dart run lib/main.dart
   ```

---

## 👥 Equipo de Desarrollo y Asignación de Tareas

| Integrante | Rol | Módulo Asignado | Rama Gitflow |
| :--- | :--- | :--- | :--- |
| **Omar David Meneses** | Scrum Master / Integrador | Salir del sistema (`quit.dart`) | `feature/quit` |
| **Erick Camargo** | Desarrollador | Agregar producto (`add.dart`) | `feature/add` |
| **Gabriel Mosquera** | Desarrollador | Listar productos (`list.dart`) | `feature/list` |
| **Alejandro Gómez** | Desarrollador | Actualizar producto (`update.dart`) | `feature/update` |
| **Samuel Marín** | Desarrollador | Eliminar producto (`delete.dart`) | `feature/delete` |

---

## 🌿 Flujo de Trabajo (Gitflow Paso a Paso)

Para mantener el orden en el repositorio, nadie realiza cambios directamente sobre `main` ni `develop`. Cada integrante sigue este ciclo:

### 1. Actualizar `develop` y crear la rama feature
Antes de empezar a programar, sitúate en `develop`, trae los últimos cambios del equipo y crea tu rama asignada:
```bash
git checkout develop
git pull origin develop
git checkout -b feature/<nombre-modulo>
```
*Ejemplo:* `git checkout -b feature/add`

### 2. Desarrollar y confirmar cambios
Realiza los cambios correspondientes a tu funcionalidad y genera commits descriptivos:
```bash
git add .
git commit -m "feat: implementar modulo add para registro de productos"
```

### 3. Subir la rama al repositorio remoto
```bash
git push origin feature/<nombre-modulo>
```

### 4. Crear el Pull Request (PR)
1. Ve al repositorio en GitHub.
2. Abre un **Pull Request** apuntando como base a la rama **`develop`** (nunca a `main`):
   - **Base:** `develop`  ←  **Compare:** `feature/<nombre-modulo>`
3. Asigna la revisión al Scrum Master.

### 5. Revisión y Merge
- Una vez revisado y aprobado el código por el Scrum Master, se realiza el merge hacia **`develop`**.
- Cuando todas las características estén terminadas y probadas en conjunto en `develop`, el Scrum Master genera el merge final hacia **`main`** para la entrega de la versión estable.