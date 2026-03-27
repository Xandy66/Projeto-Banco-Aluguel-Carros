INSERT INTO contratos (
    numero_contrato, cliente_id, veiculo_id,
    tipo_pagamento, data_inicio, data_fim,
    valor_original, desconto, valor_final, status
) VALUES
('CTR-001', 1, 3, 'Cartão', '2024-01-10', '2024-01-15', 750.00, 0, 750.00, 'active'),
('CTR-002', 2, 1, 'PIX', '2024-01-05', '2024-01-07', 100.00, 0, 100.00, 'completed'),
('CTR-003', 3, 2, 'Boleto', '2024-01-01', '2024-01-10', 5000.00, 5, 4750.00, 'active');
