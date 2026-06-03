# phpMyAdmin — Guía para participantes

## Taller con servidor compartido

**Acceso:** https://ingenieria.unac.edu.co/phpmyadmin

Todos entran a esa URL. Cada persona trabaja en **su base**:

**`cafenorte_` + tu código** (ej. `cafenorte_p07`)

1. Anota el código que te dé el facilitador.
2. En la web del taller (`index.html`), escribe tu código en **«Tu código de participante»**.
3. Usa **Copiar** en los scripts: se insertará tu nombre de base automáticamente.
4. En phpMyAdmin, comprueba en la columna izquierda que estás dentro de **tu** base antes de ejecutar SQL.

Guía completa del facilitador y reglas: **GUIA-SERVIDOR-COMPARTIDO.md**

---

## Ejecutar scripts (participante)

### Por pasos (recomendado la primera vez)

1. Pestaña **SQL** (con tu base seleccionada o desde inicio para el script 01).
2. Pegar script **01** → **Continuar** → debe aparecer `cafenorte_tucodigo` a la izquierda.
3. Clic en **tu base** → **SQL** → pegar **02**, **03**…

### Importar archivo completo

1. Editar `taller-completo.sql`: buscar `XX` → reemplazar por tu código (ej. `p07`).
2. **Importar** → elegir el archivo → **Continuar**.

---

## Ver datos sin SQL

1. Clic en **cafenorte_tucodigo** → tabla **Clientes**.
2. **Examinar** = ver filas | **Estructura** = columnas | **Insertar** = formulario.

---

## Consultas

1. Tu base seleccionada → **SQL**.
2. Pegar un `SELECT` (una consulta cada vez al aprender).
3. **Continuar**.

---

## Respaldo (solo tu base)

1. Clic en **cafenorte_tucodigo** (no en otra base).
2. **Exportar** → Rápido → SQL → **Continuar**.

---

## Reiniciar tu base

Ejecutar `00-reiniciar.sql` con **tu** código en lugar de `XX`, luego volver a importar o ejecutar 01–03.

---

## Errores frecuentes

| Mensaje / situación | Qué hacer |
|---------------------|-----------|
| `Unknown database cafenorte_XX` | No reemplazaste `XX` por tu código |
| Datos de otra persona | Cambiaste a la base equivocada en el panel izquierdo |
| `Table already exists` | Ya creaste tablas; usa reiniciar o sigue con consultas |
| No abre phpMyAdmin | Comprobar https://ingenieria.unac.edu.co/phpmyadmin y credenciales; revisar red/VPN de la universidad |

---

## Anexo: instalar servidor propio (solo facilitador)

Si tú montas el servidor del taller con XAMPP:

1. https://www.apachefriends.org/
2. Start **Apache** + **MySQL**
3. phpMyAdmin: http://localhost/phpmyadmin
4. Permitir acceso en red (configurar Apache/MySQL y firewall) o que todos usen el mismo PC por turnos.

Ver **GUIA-SERVIDOR-COMPARTIDO.md** para bases y usuarios por participante.
