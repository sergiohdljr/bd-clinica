-- 7 - Os pacientes com câncer ou idade inferior a 10 anos deixaram a clínica:
DELETE FROM tbl_Pacientes
WHERE
    doenca = 'câncer%'
    or idade < '10';