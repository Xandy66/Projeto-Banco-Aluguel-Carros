CREATE TABLE IF NOT EXISTS log_alteracoes (
    id SERIAL PRIMARY KEY,
    tabela VARCHAR(50),
    operacao VARCHAR(10),
    data_alteracao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE OR REPLACE FUNCTION registrar_log()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO log_alteracoes (tabela, operacao)
    VALUES (TG_TABLE_NAME, TG_OP);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_log_pessoas
AFTER INSERT OR UPDATE OR DELETE
ON pessoas
FOR EACH ROW
EXECUTE FUNCTION registrar_log();

CREATE OR REPLACE FUNCTION verificar_data_contrato()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.data_contrato IS NULL THEN
        RAISE EXCEPTION 'A data do contrato não pode ser nula';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_verificar_data
BEFORE INSERT
ON contratos
FOR EACH ROW
EXECUTE FUNCTION verificar_data_contrato();
