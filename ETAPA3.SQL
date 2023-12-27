CREATE TABLE TbProfessor(
	Cod_Prof INT PRIMARY KEY,
	Nome TEXT,
	Email TEXT
);

CREATE TABLE TbEndereço(
	Id_Endereço INT PRIMARY KEY,
	Cidade TEXT,
	Bairro TEXT,
	Rua TEXT
);

CREATE TABLE TbAluno(
	Matrícula INT PRIMARY KEY,
	Id_Endereço INT REFERENCES TbEndereço(Id_endereço),
	Nome TEXT,
	Data_nascimento DATE
);

CREATE TABLE TbTurma(
	Cod_Turma INT PRIMARY KEY,
	Cod_Prof INT REFERENCES TbProfessor(Cod_prof),
	Matricula INT,
	Curso TEXT
);

CREATE TABLE TbPossui(
	Cod_Turma INT REFERENCES TbTurma(Cod_turma), 
	Cod_Prof INT REFERENCES Tbprofessor(Cod_prof)
);


INSERT INTO TbProfessor(Cod_Prof, Nome, Email)
	VALUES(1, 'Creuza', 'creuza@gmail.com'),
	(2, 'Andouglas', 'Andouglas@gmail.com'),
	(3, 'Divino', 'Divino@gmail.com');
	
INSERT INTO TbEndereço(Id_Endereço, Cidade, Bairro, Rua)
	VALUES(1, 'Parelhas', 'Boqueirão', 'Alonso Bezerra'),
	(2, 'Jardim', 'Baixa da beleza', 'Frei Miguelinho'),
	(3, 'Joao Pessoa', 'Bancarios', 'Cicero Franciso');

INSERT INTO TbAluno(Matrícula, Id_Endereço, Nome, Data_Nascimento)
	VALUES(202114, 1, 'Karoline', '2005-09-13'),
	(202108, 2, 'Yasmim', '2005-11-08'),
	(202116, 3, 'Ilane', '2005-08-06');

INSERT INTO TbTurma(Cod_Turma, Cod_Prof, Matricula, Curso)
	VALUES(1, 1, 202114, 'informatica'),
	(2, 2, 202108, 'Mineração'),
	(3, 3, 202116, 'Informatica');
	
INSERT INTO TbPossui(Cod_Turma, Cod_Prof)
	VALUES(1, 1),
	(2, 2),
	(3, 3);
	

















