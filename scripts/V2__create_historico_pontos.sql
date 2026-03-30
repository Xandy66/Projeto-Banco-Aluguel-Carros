CREATE TABLE historico_pontos (
    id SERIAL PRIMARY KEY,
    cliente_id INTEGER REFERENCES clientes(id) ON DELETE CASCADE,
    contrato_id INTEGER REFERENCES contratos(id) ON DELETE SET NULL,
    pontos INTEGER NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    descricao TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
