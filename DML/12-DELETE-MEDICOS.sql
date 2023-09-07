-- 8 - Os médicos que residem em Biguacu e Palhoca deixaram a clínica: 
DELETE FROM tbl_Medicos
WHERE
    cidade = 'Palhoca'
    OR cidade = 'Biguacu';