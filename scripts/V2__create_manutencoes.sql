CREATE TABLE manutencoes (
    id SERIAL PRIMARY KEY,
    veiculo_id INTEGER REFERENCES veiculos(id) ON DELETE CASCADE,
    tipo VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL,
    custo DECIMAL(10, 2),
    data_inicio DATE NOT NULL,
    data_fim DATE,
    km_manutencao INTEGER,
    status VARCHAR(20) DEFAULT 'em_andamento',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
