CREATE TABLE IF NOT EXISTS pessoas (
    id SERIAL PRIMARY KEY,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    endereco TEXT,
    email VARCHAR(255) UNIQUE NOT NULL,
    dados_bancarios TEXT,
    telefone VARCHAR(20),
    sexo sexo_tipo,
    data_nascimento DATE,
    ativo BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
