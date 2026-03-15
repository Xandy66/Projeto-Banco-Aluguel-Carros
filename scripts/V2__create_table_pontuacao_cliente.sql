CREATE TABLE IF NOT EXISTS pontuacao_cliente (
    id SERIAL PRIMARY KEY,
    pessoa_id INT NOT NULL,
    pontos INT DEFAULT 0,

    CONSTRAINT fk_pessoa_pontuacao
        FOREIGN KEY (pessoa_id)
        REFERENCES pessoas(id)
);
