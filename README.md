# Taller: Bases de datos con IA (45 min)

Taller práctico para principiantes: MySQL en servidor compartido, phpMyAdmin y scripts SQL con ayuda de inteligencia artificial.

**Servidor:** [ingenieria.unac.edu.co/phpmyadmin](https://ingenieria.unac.edu.co/phpmyadmin)

Cada participante trabaja en su propia base de datos: `cafenorte_<codigo>` (ej. `cafenorte_p01`).

## Contenido

| Archivo | Descripción |
|---------|-------------|
| `index.html` | Presentación web interactiva (agenda, prompts IA, scripts con copiar) |
| `GUIA-FACILITADOR.md` | Guión del taller para quien imparte |
| `GUIA-SERVIDOR-COMPARTIDO.md` | Bases separadas por participante |
| `GUIA-PHPMYADMIN.md` | Uso de phpMyAdmin |
| `LISTA-PARTICIPANTES.md` | Plantilla de códigos y credenciales |
| `scripts/` | SQL del taller (crear BD, tablas, datos, consultas) |

## Inicio rápido (participante)

1. Abrir `index.html` en el navegador.
2. Escribir tu código (ej. `p07`) en «Tu código de participante».
3. Entrar a phpMyAdmin e iniciar sesión.
4. Copiar y ejecutar los scripts 01 → 02 → 03, o importar `scripts/taller-completo.sql` (reemplazando `XX` por tu código).

## Inicio rápido (facilitador)

1. Ejecutar `scripts/facilitador-crear-bases.sql` en phpMyAdmin.
2. Opcional: `scripts/facilitador-usuarios-opcional.sql` (un usuario por participante).
3. Repartir códigos con `LISTA-PARTICIPANTES.md`.

## GitHub Pages (opcional)

Para publicar la web del taller: Settings → Pages → Source: rama `main`, carpeta `/ (root)`.
