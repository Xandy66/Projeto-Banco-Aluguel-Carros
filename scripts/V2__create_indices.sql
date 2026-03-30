-- VEICULOS
CREATE INDEX idx_veiculos_placa ON veiculos(placa);
CREATE INDEX idx_veiculos_disponivel ON veiculos(disponivel);

-- PESSOAS
CREATE INDEX idx_pessoas_cpf ON pessoas(cpf);
CREATE INDEX idx_pessoas_email ON pessoas(email);

-- CLIENTES (GAMIFICAÇÃO)
CREATE INDEX idx_clientes_nivel ON clientes(nivel);

-- CONTRATOS
CREATE INDEX idx_contratos_status ON contratos(status);
CREATE INDEX idx_contratos_cliente ON contratos(cliente_id);
CREATE INDEX idx_contratos_veiculo ON contratos(veiculo_id);
CREATE INDEX idx_contratos_datas ON contratos(data_inicio, data_fim);
