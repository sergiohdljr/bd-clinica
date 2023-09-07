-- 3 - A paciente Ana fez aniversário e sua doença agora é cancer 
UPDATE tbl_Pacientes
SET
    idade = idade + 1,
    doenca = 'Câncer'
WHERE
    codp = '1';