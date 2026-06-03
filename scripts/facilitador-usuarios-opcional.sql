-- ============================================================
-- FACILITADOR (OPCIONAL) — Un usuario MySQL por participante (p01–p20)
-- Ejecutar DESPUÉS de facilitador-crear-bases.sql (phpMyAdmin, cuenta admin).
-- Cada persona solo ve SU base en phpMyAdmin.
-- Contraseña: Taller2026! + 2 dígitos aleatorios (distintos del nº de participante).
-- ============================================================

-- Participante p01
CREATE USER IF NOT EXISTS 'taller_p01'@'%' IDENTIFIED BY 'Taller2026!47';
GRANT ALL PRIVILEGES ON cafenorte_p01.* TO 'taller_p01'@'%';

-- Participante p02
CREATE USER IF NOT EXISTS 'taller_p02'@'%' IDENTIFIED BY 'Taller2026!83';
GRANT ALL PRIVILEGES ON cafenorte_p02.* TO 'taller_p02'@'%';

-- Participante p03
CREATE USER IF NOT EXISTS 'taller_p03'@'%' IDENTIFIED BY 'Taller2026!19';
GRANT ALL PRIVILEGES ON cafenorte_p03.* TO 'taller_p03'@'%';

-- Participante p04
CREATE USER IF NOT EXISTS 'taller_p04'@'%' IDENTIFIED BY 'Taller2026!56';
GRANT ALL PRIVILEGES ON cafenorte_p04.* TO 'taller_p04'@'%';

-- Participante p05
CREATE USER IF NOT EXISTS 'taller_p05'@'%' IDENTIFIED BY 'Taller2026!72';
GRANT ALL PRIVILEGES ON cafenorte_p05.* TO 'taller_p05'@'%';

-- Participante p06
CREATE USER IF NOT EXISTS 'taller_p06'@'%' IDENTIFIED BY 'Taller2026!38';
GRANT ALL PRIVILEGES ON cafenorte_p06.* TO 'taller_p06'@'%';

-- Participante p07
CREATE USER IF NOT EXISTS 'taller_p07'@'%' IDENTIFIED BY 'Taller2026!94';
GRANT ALL PRIVILEGES ON cafenorte_p07.* TO 'taller_p07'@'%';

-- Participante p08
CREATE USER IF NOT EXISTS 'taller_p08'@'%' IDENTIFIED BY 'Taller2026!21';
GRANT ALL PRIVILEGES ON cafenorte_p08.* TO 'taller_p08'@'%';

-- Participante p09
CREATE USER IF NOT EXISTS 'taller_p09'@'%' IDENTIFIED BY 'Taller2026!65';
GRANT ALL PRIVILEGES ON cafenorte_p09.* TO 'taller_p09'@'%';

-- Participante p10
CREATE USER IF NOT EXISTS 'taller_p10'@'%' IDENTIFIED BY 'Taller2026!33';
GRANT ALL PRIVILEGES ON cafenorte_p10.* TO 'taller_p10'@'%';

-- Participante p11
CREATE USER IF NOT EXISTS 'taller_p11'@'%' IDENTIFIED BY 'Taller2026!88';
GRANT ALL PRIVILEGES ON cafenorte_p11.* TO 'taller_p11'@'%';

-- Participante p12
CREATE USER IF NOT EXISTS 'taller_p12'@'%' IDENTIFIED BY 'Taller2026!42';
GRANT ALL PRIVILEGES ON cafenorte_p12.* TO 'taller_p12'@'%';

-- Participante p13
CREATE USER IF NOT EXISTS 'taller_p13'@'%' IDENTIFIED BY 'Taller2026!77';
GRANT ALL PRIVILEGES ON cafenorte_p13.* TO 'taller_p13'@'%';

-- Participante p14
CREATE USER IF NOT EXISTS 'taller_p14'@'%' IDENTIFIED BY 'Taller2026!59';
GRANT ALL PRIVILEGES ON cafenorte_p14.* TO 'taller_p14'@'%';

-- Participante p15
CREATE USER IF NOT EXISTS 'taller_p15'@'%' IDENTIFIED BY 'Taller2026!26';
GRANT ALL PRIVILEGES ON cafenorte_p15.* TO 'taller_p15'@'%';

-- Participante p16
CREATE USER IF NOT EXISTS 'taller_p16'@'%' IDENTIFIED BY 'Taller2026!91';
GRANT ALL PRIVILEGES ON cafenorte_p16.* TO 'taller_p16'@'%';

-- Participante p17
CREATE USER IF NOT EXISTS 'taller_p17'@'%' IDENTIFIED BY 'Taller2026!54';
GRANT ALL PRIVILEGES ON cafenorte_p17.* TO 'taller_p17'@'%';

-- Participante p18
CREATE USER IF NOT EXISTS 'taller_p18'@'%' IDENTIFIED BY 'Taller2026!68';
GRANT ALL PRIVILEGES ON cafenorte_p18.* TO 'taller_p18'@'%';

-- Participante p19
CREATE USER IF NOT EXISTS 'taller_p19'@'%' IDENTIFIED BY 'Taller2026!37';
GRANT ALL PRIVILEGES ON cafenorte_p19.* TO 'taller_p19'@'%';

-- Participante p20
CREATE USER IF NOT EXISTS 'taller_p20'@'%' IDENTIFIED BY 'Taller2026!82';
GRANT ALL PRIVILEGES ON cafenorte_p20.* TO 'taller_p20'@'%';

FLUSH PRIVILEGES;

-- ============================================================
-- Credenciales para repartir (copiar a LISTA-PARTICIPANTES.md)
-- URL: https://ingenieria.unac.edu.co/phpmyadmin
-- ============================================================
-- p01  taller_p01  Taller2026!47   cafenorte_p01
-- p02  taller_p02  Taller2026!83   cafenorte_p02
-- p03  taller_p03  Taller2026!19   cafenorte_p03
-- p04  taller_p04  Taller2026!56   cafenorte_p04
-- p05  taller_p05  Taller2026!72   cafenorte_p05
-- p06  taller_p06  Taller2026!38   cafenorte_p06
-- p07  taller_p07  Taller2026!94   cafenorte_p07
-- p08  taller_p08  Taller2026!21   cafenorte_p08
-- p09  taller_p09  Taller2026!65   cafenorte_p09
-- p10  taller_p10  Taller2026!33   cafenorte_p10
-- p11  taller_p11  Taller2026!88   cafenorte_p11
-- p12  taller_p12  Taller2026!42   cafenorte_p12
-- p13  taller_p13  Taller2026!77   cafenorte_p13
-- p14  taller_p14  Taller2026!59   cafenorte_p14
-- p15  taller_p15  Taller2026!26   cafenorte_p15
-- p16  taller_p16  Taller2026!91   cafenorte_p16
-- p17  taller_p17  Taller2026!54   cafenorte_p17
-- p18  taller_p18  Taller2026!68   cafenorte_p18
-- p19  taller_p19  Taller2026!37   cafenorte_p19
-- p20  taller_p20  Taller2026!82   cafenorte_p20
--
-- Si el usuario ya existía con otra clave, ejecutar por ejemplo:
-- ALTER USER 'taller_p01'@'%' IDENTIFIED BY 'Taller2026!47';
