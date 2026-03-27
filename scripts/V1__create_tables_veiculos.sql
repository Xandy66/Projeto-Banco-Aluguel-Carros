CREATE TABLE IF NOT EXISTS veiculos (
    id SERIAL PRIMARY KEY,
    placa VARCHAR(10) UNIQUE NOT NULL,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano INTEGER NOT NULL CHECK (ano >= 1900),
    cor VARCHAR(30) NOT NULL,
    tipo tipo_veiculo NOT NULL, -- corrigido
    valor_dia DECIMAL(10,2) NOT NULL CHECK (valor_dia > 0),
    disponivel BOOLEAN DEFAULT true,
    km_atual INTEGER DEFAULT 0,
    observacoes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
