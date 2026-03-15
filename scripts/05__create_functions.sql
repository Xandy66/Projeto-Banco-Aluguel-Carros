-- função para inserir pontos
CREATE OR REPLACE FUNCTION adicionar_pontos(
    cliente_id INT,
    pontos INT
)
RETURNS VOID AS $$
BEGIN
    INSERT INTO pontuacao_cliente (id_pessoa, pontos)
    VALUES (cliente_id, pontos);
END;
$$ LANGUAGE plpgsql;
-- Para usar: SELECT adicionar_pontos(1, 50);

-- função para remover cliente
CREATE OR REPLACE FUNCTION remover_cliente(
    cliente_id INT
)
RETURNS VOID AS $$
BEGIN
    DELETE FROM pessoas
    WHERE id = cliente_id;
END;
$$ LANGUAGE plpgsql;
-- Para usar: SELECT remover_cliente(3);

-- função para atualizar pontos
CREATE OR REPLACE FUNCTION atualizar_pontos(
    cliente_id INT,
    novos_pontos INT
)
RETURNS VOID AS $$
BEGIN
    UPDATE pontuacao_cliente
    SET pontos = novos_pontos
    WHERE id_pessoa = cliente_id;
END;
$$ LANGUAGE plpgsql;
-- Para usar: SELECT atualizar_pontos(1, 200);
