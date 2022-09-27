CREATE TABLE Quantidade_Compras (
'id' INT(11) NOT NULL AUTO_INCREMENT,
'qtd_compras' INT (11) NULL DEFAULT NULL,
'qtd_compras_dia' INT (11) NULL DEFAULT NULL,
'data_compra' DATE NULL DEFAULT NULL,
PRIMARY KEY ('id'));


DELIMITER //
    CREATE PROCEDURE  Compras_Diarias
BEGIN
    declare contador int(11);

    SELECT count(*) into contador FROM Quantidade_Compras; 

    IF contador > 0 THEN
        UPDATE Quantidade_Compras SET qtd_compras + qtd_compras_dia = qtd_compras;
    END IF;
END //
DELIMITER ;
