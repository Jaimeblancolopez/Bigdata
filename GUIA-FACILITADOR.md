# Guía del facilitador — Taller 45 min

## Objetivo

Que personas **sin experiencia** entiendan qué es una base de datos, creen la suya en un **servidor MySQL compartido** (phpMyAdmin) y ejecuten consultas con ayuda de la IA.

## Arquitectura del taller

```
                    ┌─────────────────────┐
                    │  Servidor MySQL     │
                    │  + phpMyAdmin       │
                    └──────────┬──────────┘
           ┌──────────────────┼──────────────────┐
           ▼                  ▼                  ▼
    cafenorte_p01      cafenorte_p02      cafenorte_p03
    (participante 1)   (participante 2)   (participante 3)
```

Cada participante = **una base de datos distinta**, mismo esquema de tablas.

## Materiales necesarios

- Servidor **ingenieria.unac.edu.co** — https://ingenieria.unac.edu.co/phpmyadmin
- Lista de códigos asignados (`LISTA-PARTICIPANTES.md` o impresa)
- Sitio `index.html` (participantes escriben su código y copian SQL ya personalizado)
- Scripts en `scripts/` — ver **GUIA-SERVIDOR-COMPARTIDO.md**

## Antes del taller (20 min)

1. Probar https://ingenieria.unac.edu.co/phpmyadmin desde otra PC de la sala (y VPN/red UNAC si aplica).
2. Ejecutar `facilitador-crear-bases.sql` (ampliar hasta el número de asistentes) **o** dejar que cada uno cree la suya con script 01.
3. **(Recomendado)** Ejecutar `facilitador-usuarios-opcional.sql` para que cada uno solo vea su base.
4. Repartir códigos: `p01`, `p02`, … o apellidos (`garcia`, `lopez`).
5. Importar tu propia base de demo (`cafenorte_demo`) para proyectar.

## Guión minuto a minuto

| Min | Actividad | Qué decir / hacer |
|-----|-----------|-------------------|
| 0-5 | Intro | Un servidor, muchas bases; cada quien en la suya. Mostrar panel izquierdo de phpMyAdmin con varias `cafenorte_*`. |
| 5-12 | Códigos | Todos escriben su código en la web del taller. Ver nombre `cafenorte_p07`. |
| 12-18 | IA | Prompt 1; comparar con script 02. |
| 18-30 | Crear bases | Cada uno ejecuta 01→02→03 o importa `taller-completo.sql` (con XX reemplazado). |
| 30-40 | Consultas | SELECT en **su** base; circular y revisar que no estén en la base del vecino. |
| 40-45 | Exportar | Cada uno exporta **solo** su `cafenorte_XX`. |

## Frases útiles

- *“Tu código es la llave de tu base: cafenorte_ + código.”*
- *“Si ves datos que no insertaste, estás en la base equivocada.”*
- *“Exportar solo tu base, no la del servidor entero.”*

## Preguntas frecuentes

**¿Todos ven todas las bases?**  
Solo si entran como `root`. Con usuarios `taller_p01`, etc., cada uno ve solo la suya.

**¿Cuántos participantes soporta?**  
Depende del servidor; 20–30 bases pequeñas suele ir bien en un PC decente.

## Si algo falla

| Problema | Acción |
|----------|--------|
| No conecta phpMyAdmin | Revisar firewall, IP, Apache/MySQL activos |
| Dos personas mismo código | Reasignar código único; uno hace `00-reiniciar.sql` |
| Base ajena borrada | Restaurar desde exportación; usar usuarios separados |

## Archivos del paquete

```
taller-bd-ia/
├── index.html
├── LISTA-PARTICIPANTES.md
├── GUIA-SERVIDOR-COMPARTIDO.md   ← Principal para servidor compartido
├── GUIA-FACILITADOR.md
├── GUIA-PHPMYADMIN.md
└── scripts/
    ├── facilitador-crear-bases.sql
    ├── facilitador-usuarios-opcional.sql
    ├── taller-completo.sql       ← Reemplazar XX antes de importar
    ├── 00-reiniciar.sql
    └── 01 … 05
```
