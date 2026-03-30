CREATE TABLE pagamentos (
    id SERIAL PRIMARY KEY,
    contrato_id INTEGER REFERENCES contratos(id) ON DELETE CASCADE,
    valor DECIMAL(10, 2) NOT NULL,
    data_pagamento TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    metodo_pagamento VARCHAR(50) NOT NULL,
    status VARCHAR(20) DEFAULT 'pendente',
    comprovante_url TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
