# Servidor MySQL compartido — Una base por participante

## Idea general

Todos usan el **mismo servidor** y el **mismo phpMyAdmin**, pero cada persona trabaja solo en **su base de datos**:

```
cafenorte_p01   ← participante 1
cafenorte_p02   ← participante 2
cafenorte_ana   ← participante Ana (código por apellido)
```

Las **tablas** (Clientes, Productos, Pedidos…) son iguales en cada base; lo que cambia es el **nombre de la base**.

## Reglas del código

| Permitido | Ejemplo |
|-----------|---------|
| Letras minúsculas | `ana`, `garcia` |
| Números | `p01`, `p12` |
| Guion bajo (solo dentro del código) | — |

| No usar | Motivo |
|---------|--------|
| Espacios | `cafenorte juan` → error |
| Mayúsculas | Evitar confusiones en Linux |
| Tildes / ñ en el código | Usar `nino` en vez de `niño` |

**Nombre completo de la base:** `cafenorte_` + tu código → `cafenorte_p07`

## Rol del facilitador (antes del taller)

### 1. Lista de asignación (imprimir o compartir)

| Nombre | Código | Base de datos | Usuario phpMyAdmin (opcional) |
|--------|--------|---------------|-------------------------------|
| Ana López | p01 | cafenorte_p01 | taller_p01 |
| Luis Ruiz | p02 | cafenorte_p02 | taller_p02 |
| … | … | … | … |

### 2. Crear las bases vacías (opcional)

Ejecutar `scripts/facilitador-crear-bases.sql` y ampliar la lista hasta cubrir a todos.

O dejar que cada participante cree la suya con el script `01-crear-base-datos.sql`.

### 3. Usuarios separados (recomendado si hay muchos)

Ejecutar `scripts/facilitador-usuarios-opcional.sql`:

- Cada participante entra a phpMyAdmin con **su usuario** (`taller_p01`).
- Solo ve **su** base; no las de los demás.
- Misma contraseña temporal para todos o una por persona.

### 4. URL y acceso

Todos entran por la misma dirección:

**https://ingenieria.unac.edu.co/phpmyadmin**

Incluir usuario y contraseña en `LISTA-PARTICIPANTES.md` (cuenta por participante o cuenta compartida del taller, según configure el administrador del servidor).

## Rol del participante

1. Recibir **su código** (ej. `p07`).
2. En la web del taller, escribir el código en **“Tu código”** y usar **Copiar** en los scripts (sustituye `XX` automáticamente).
3. En phpMyAdmin:
   - **Importar** `taller-completo.sql` después de reemplazar `XX` por `p07` en un editor de texto, **o**
   - Pegar scripts 01 → 02 → 03 con el botón copiar de la web.
4. En el panel izquierdo, trabajar **solo** dentro de `cafenorte_p07`.
5. No ejecutar scripts en bases de otros (si todos usan `root`, se ven todas las bases; por eso convienen usuarios separados).

## Importar el archivo completo con tu código

1. Abrir `taller-completo.sql` en Bloc de notas.
2. **Buscar y reemplazar:** `XX` → `p07` (tu código).
3. Guardar como `taller-completo-p07.sql`.
4. phpMyAdmin → **Importar** → elegir ese archivo.

## Reiniciar solo tu base

En `00-reiniciar.sql` cambia `XX` por tu código y ejecuta en SQL.

## Errores típicos

| Error | Causa |
|-------|--------|
| `Access denied` | Usuario sin permiso en esa base |
| `Database exists` + tablas duplicadas | Ya importaste antes; usa `00-reiniciar.sql` o borra tu base en phpMyAdmin |
| Modifico datos de otro | Trabajaste en la base equivocada; revisa el nombre en la columna izquierda |
| `Unknown database cafenorte_XX` | No reemplazaste `XX` por tu código |

## Respaldo por participante

Cada uno: seleccionar **su** `cafenorte_XX` → **Exportar** → SQL.  
No exportar la base de otra persona.
