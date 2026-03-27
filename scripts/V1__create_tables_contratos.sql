CREATE TABLE IF NOT EXISTS contratos (
    id SERIAL PRIMARY KEY,
    numero_contrato VARCHAR(20) UNIQUE NOT NULL,
    data_contrato DATE DEFAULT CURRENT_DATE,

    cliente_id INTEGER REFERENCES pessoas(id),

    veiculo_id INTEGER REFERENCES veiculos(id),

    tipo_pagamento VARCHAR(50) NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,

    valor_original DECIMAL(10,2) NOT NULL,
    desconto DECIMAL(5,2) DEFAULT 0,
    valor_final DECIMAL(10,2) NOT NULL,

    status status_contrato DEFAULT 'active',

    km_inicial INTEGER,
    km_final INTEGER,
    observacoes TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CHECK (data_fim >= data_inicio)
);
