CREATE TABLE IF NOT EXISTS pessoas (
    id SERIAL PRIMARY KEY,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    endereco TEXT,
    email VARCHAR(150) UNIQUE,
    dados_bancarios TEXT,
    telefone VARCHAR(20),
    sexo VARCHAR(10),
    data_nascimento DATE,
    tipo VARCHAR(20)
);
