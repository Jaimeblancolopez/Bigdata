-- ============================================================
-- FACILITADOR (OPCIONAL) — Un usuario MySQL por participante
-- Cada persona solo ve SU base en phpMyAdmin (más orden y privacidad).
-- Cambia la contraseña Taller2026! por una que entregues en sala.
-- Duplica el bloque por cada código (p01, p02, …).
-- ============================================================

-- Participante p01
CREATE USER IF NOT EXISTS 'taller_p01'@'%' IDENTIFIED BY 'Taller2026!';
GRANT ALL PRIVILEGES ON cafenorte_p01.* TO 'taller_p01'@'%';

-- Participante p02
CREATE USER IF NOT EXISTS 'taller_p02'@'%' IDENTIFIED BY 'Taller2026!';
GRANT ALL PRIVILEGES ON cafenorte_p02.* TO 'taller_p02'@'%';

-- Participante p03
CREATE USER IF NOT EXISTS 'taller_p03'@'%' IDENTIFIED BY 'Taller2026!';
GRANT ALL PRIVILEGES ON cafenorte_p03.* TO 'taller_p03'@'%';

-- … repite el mismo patrón para p04 … p10

FLUSH PRIVILEGES;

-- En phpMyAdmin cada participante entra con:
-- Usuario: taller_p01   Contraseña: Taller2026!
-- Solo verá la base cafenorte_p01
