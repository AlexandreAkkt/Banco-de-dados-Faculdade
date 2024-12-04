CREATE DATABASE faculdadeanjo;
USE faculdadeanjo;

CREATE TABLE Endereco (
    id_endereco INT AUTO_INCREMENT PRIMARY KEY,
    logradouro VARCHAR(150),
    cidade VARCHAR(100),
    estado VARCHAR(50),
    cep VARCHAR(10)
);

CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    datanascimento DATE,
    matricula VARCHAR(20) UNIQUE,
    enderecoID INT,
    FOREIGN KEY (EnderecoID) REFERENCES Enderecos(EnderecoID)
);

CREATE TABLE Professore (
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

CREATE TABLE Materia (
    id_materia INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargaHoraria INT,
    ID_curso INT,
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
);

CREATE TABLE Turma (
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

CREATE TABLE Notas (
    id_nota  INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    FOREIGN KEY (id_aluno) REFERENCES id_aluno(id_aluno),
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES id_turna(id_turna),
    Nota DECIMAL(5,2)
   
);
