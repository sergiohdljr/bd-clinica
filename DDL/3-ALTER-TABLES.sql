-- 3 - Crie a coluna nroa(int)na tabela Funcionarios
ALTER TABLE tbl_Funcionarios
ADD column nroa INT,
ADD CONSTRAINT fk_nroa FOREIGN KEY (nroa) REFERENCES tbl_Ambulatorios (nroa);

-- 5 - Remover o índice doenca em Pacientes 
ALTER TABLE tbl_Pacientes
DROP INDEX idx_doenca_Pacientes;

-- 6.Remover as colunas cargo e nroa da tabela de Funcionarios
ALTER TABLE tbl_Funcionarios
DROP FOREIGN KEY fk_nroa;

ALTER TABLE tbl_Funcionarios
DROP COLUMN nroa;

ALTER TABLE tbl_Funcionarios
DROP COLUMN cargo;