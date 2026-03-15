-- consulta por critério
SELECT *
FROM pessoas
WHERE sexo = 'M';

-- contratos por dia
SELECT data_contrato, COUNT(*) AS total_contratos
FROM contratos
GROUP BY data_contrato
ORDER BY data_contrato;

-- total de pessoas por sexo
SELECT sexo, COUNT(*) AS total_pessoas
FROM pessoas
GROUP BY sexo;

-- join entre pessoas, veiculos e contratos
SELECT 
    p.nome AS cliente,
    v.modelo AS veiculo,
    c.data_contrato
FROM contratos c
JOIN pessoas p ON c.id_pessoa = p.id
JOIN veiculos v ON c.id_veiculo = v.id;
