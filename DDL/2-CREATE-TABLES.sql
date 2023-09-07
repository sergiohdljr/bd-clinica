CREATE TABLE
     tbl_Ambulatorios (
          nroa INT PRIMARY KEY,
          andar NUMERIC(3) NOT NULL,
          capacidade SMALLINT
     );

CREATE TABLE
     tbl_Medicos (
          codm INT PRIMARY KEY,
          nome VARCHAR(40) NOT NULL,
          idade SMALLINT NOT NULL,
          especialidade CHAR(20),
          CPF NUMERIC(11) UNIQUE,
          cidade VARCHAR(30),
          nroa INT,
          FOREIGN KEY (nroa) REFERENCES tbl_Ambulatorios (nroa) ON DELETE CASCADE ON UPDATE CASCADE
     );

CREATE TABLE
     tbl_Pacientes (
          codp INT PRIMARY KEY,
          nome VARCHAR(40) NOT NULL,
          idade SMALLINT NOT NULL,
          cidade CHAR(30),
          CPF NUMERIC(11) UNIQUE,
          doenca VARCHAR(40) NOT NULL - >
     );

CREATE TABLE
     tbl_Funcionarios (
          codf INT primary key,
          nome VARCHAR(40) NOT NULL,
          idade char(3),
          cidade VARCHAR(30),
          salario NUMERIC(10),
          cargo VARCHAR(20),
          CPF numeric(11) unique
     );

CREATE TABLE
     tbl_Consultas (
          codm INT,
          codp INT,
          dados DATE,
          hora TIME,
          PRIMARY KEY (codm, codp, dados, hora),
          FOREIGN KEY (codm) REFERENCES tbl_Medicos (codm) ON DELETE CASCADE ON UPDATE CASCADE,
          FOREIGN KEY (codp) REFERENCES tbl_Pacientes (codp) ON DELETE CASCADE ON UPDATE CASCADE
     );