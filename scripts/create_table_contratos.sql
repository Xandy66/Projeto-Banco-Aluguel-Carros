CREATE TABLE IF NOT EXISTS contratos (
    id SERIAL PRIMARY KEY,
    numero_contrato VARCHAR(50) UNIQUE NOT NULL,
    data_contrato DATE NOT NULL,
    tipo_pagamento VARCHAR(20),
    data_inicio DATE,
    data_fim DATE,
    valor DECIMAL(10,2),

    cliente_id INTEGER,
    veiculo_id INTEGER,

    FOREIGN KEY (cliente_id) REFERENCES pessoas(id),
    FOREIGN KEY (veiculo_id) REFERENCES veiculos(id)
);
