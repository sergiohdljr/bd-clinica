-- 2 - A consulta do médico 1 com o paciente 4  passou para às 12:00 horas do dia 4 de Julho de 2006: 
UPDATE tbl_Consultas
SET
    hora = '12:00',
    dados = '2006-07-04'
WHERE
    codm = 1
    AND codp = 4;

-- 4 - A consulta do médico Pedro (codf = 3) com o paciente Carlos (codf = 4) passou para uma hora e meia depois:
UPDATE tbl_Consultas
SET
    hora = addtime (hora, '01:30')
WHERE
    codm = '3'
    AND codp = '4';