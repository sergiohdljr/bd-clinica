-- 6 - As consultas marcadas após as 19 horas foram canceladas:
DELETE FROM tbl_Consultas
WHERE
    hora LIKE '19%'