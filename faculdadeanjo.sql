CREATE DATABASE db_sistema_faculdadeanjo;

USE db_sistema_faculdadeanjo;

SHOW DATABASES;

SHOW TABLES;

CREATE TABLE Endereco (
    id_endereco INT AUTO_INCREMENT PRIMARY KEY,
    logradouro VARCHAR(150),
    cidade VARCHAR(100),
    estado VARCHAR(50),
    cep VARCHAR(10)
);
	INSERT INTO enderecos (logradouro, cidade, estado, cep) VALUES 
	('Rua das Flores', 'São Paulo', 'SP', '01001-000'),  -- Endereço para João Silva
	('Avenida Paulista', 'São Paulo', 'SP', '01310-000'), -- Endereço para Maria Souza
	('Rua dos Girassóis', 'Rio de Janeiro', 'RJ', '20010-000'), -- Endereço para Lucas Pereira
	('Avenida das Palmeiras', 'Belo Horizonte', 'MG', '30123-000'), -- Endereço para Fernanda Lima
	('Rua da Liberdade', 'Fortaleza', 'CE', '60123-000'); -- Endereço para Juliana Costa

CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    datanascimento DATE,
    matricula VARCHAR(20) UNIQUE,
    id_endereco INT,
    FOREIGN KEY (id_endeco) REFERENCES id_endereco(id_endereco)
    
);

#INSERTS 
    INSERT INTO aluno (nome, datanascimento, matricula) 
    VALUES 
	('Lucas Pereira', '2000-03-10', '20231003'), 
	('Fernanda Lima', '2001-11-25', '20231004'), 
	('Juliana Costa', '2002-07-30', '20231005'), 
	('Ricardo Santos', '2000-01-05', '20231006'),  
	('Beatriz Almeida', '2003-04-15', '20231007'), 
	('Eduardo Silva', '2001-06-20', '20231008'),   
	('Isabela Ferreira', '2002-12-14', '20231009'), 
	('Carlos Henrique', '2001-02-25', '20231010'), 
	('Giovanna Martins', '2000-10-30', '20231011' ), 
	('Felipe Barbosa', '2002-09-18', '20231012' );  
   
CREATE TABLE professor (
	id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    especializacao VARCHAR(100),
    enderecoID INT,
    FOREIGN KEY (EnderecoID) REFERENCES Enderecos(EnderecoID)
);

CREATE TABLE Curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    duracao INT,
    id_aluno INT,
    FOREIGN KEY (id_aluno) REFERENCES id_aluno (id_aluno)
);

CREATE TABLE materia (
    id_materia INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargaHoraria INT,
    ID_curso INT,
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
);

CREATE TABLE turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    Curso INT,
    FOREIGN KEY (id_curso) REFERENCES id_curso(id_curso),
    Professor INT,
    FOREIGN KEY (id_professor) REFERENCES id_professor (id_professor),
    id_aluno INT,
    FOREIGN KEY (id_aluno) REFERENCES id_aluno (id_aluno),
    id_materia INT, 
    FOREIGN KEY (id_materia) REFERENCES id_Materia(id_materia)
    
);

CREATE TABLE nota (
    id_nota  INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    FOREIGN KEY (id_aluno) REFERENCES id_aluno(id_aluno),
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES id_turna(id_turna),
    Nota DECIMAL(5,2)
   
);

INSERT INTO Notas (id_aluno, id_turma, id_nota) 
VALUES

(1, 1, 8.5), -- João Silva na Turma A - Algoritmos (Nota: 8.5)
(2, 2, 7.0), -- Maria Souza na Turma B - Física Aplicada (Nota: 7.0)
(3, 1, 9.0), -- Lucas Pereira na Turma A - Algoritmos (Nota: 9.0)
(4, 2, 6.5), -- Fernanda Lima na Turma B - Física Aplicada (Nota: 6.5)
(5, 1, 8.0); -- Juliana Costa na Turma A - Algoritmos (Nota: 8.0)
