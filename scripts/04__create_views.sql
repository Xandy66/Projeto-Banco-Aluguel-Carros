-- view de agregação
CREATE OR REPLACE VIEW vw_total_contratos_por_dia AS
SELECT 
    data_contrato,
    COUNT(*) AS total_contratos
FROM contratos
GROUP BY data_contrato;

-- view desnormalizada
CREATE OR REPLACE VIEW vw_contratos_detalhados AS
SELECT
    p.nome AS cliente,
    v.modelo AS veiculo,
    c.data_contrato
FROM contratos c
JOIN pessoas p ON c.id_pessoa = p.id
JOIN veiculos v ON c.id_veiculo = v.id;
