CREATE TABLE IF NOT EXISTS cliente_conquista (
    id SERIAL PRIMARY KEY,
    pessoa_id INT NOT NULL,
    conquista_id INT NOT NULL,
    data_conquista DATE DEFAULT CURRENT_DATE,

    CONSTRAINT fk_pessoa_conquista
        FOREIGN KEY (pessoa_id)
        REFERENCES pessoas(id),

    CONSTRAINT fk_conquista
        FOREIGN KEY (conquista_id)
        REFERENCES conquistas(id)
);
