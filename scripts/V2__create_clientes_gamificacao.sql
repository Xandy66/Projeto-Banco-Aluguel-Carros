-- Tabela de Clientes (Extensão de Pessoas com dados de fidelidade)
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    pessoa_id INTEGER REFERENCES pessoas(id) ON DELETE CASCADE,
    pontos INTEGER DEFAULT 0,
    nivel nivel_cliente DEFAULT 'bronze',
    gasto_mensal DECIMAL(10, 2) DEFAULT 0,
    cashback_acumulado DECIMAL(10, 2) DEFAULT 0,
    ultimo_contrato DATE,
    meses_sem_contrato INTEGER DEFAULT 0,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(pessoa_id)
);
