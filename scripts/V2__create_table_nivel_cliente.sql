CREATE TABLE IF NOT EXISTS nivel_cliente (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    pontos_minimos INT NOT NULL
);
