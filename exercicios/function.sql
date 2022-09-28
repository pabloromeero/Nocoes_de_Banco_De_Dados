CREATE TABLE clientes (
    qtd_cliente INT(10)
)

CREATE FUNCTION soma_clientes(@dt DateTime)
RETURNS VARCHAR(50)
AS
RETURN (SELECT SUM(qtd_cliente) FROM clientes)
