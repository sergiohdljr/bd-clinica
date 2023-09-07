-- 4- Crie os seguintes índices: •Medicos: CPF (único) •Pacientes: doenca
CREATE UNIQUE INDEX idx_unique_CPF_Medicos ON tbl_Medicos (CPF);
CREATE INDEX idx_doenca_Pacientes ON tbl_Pacientes (doenca);