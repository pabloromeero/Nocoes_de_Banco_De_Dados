CREATE TABLE TabelaA(
    Nome VARCHAR(100) NULL
)

GO

CREATE TABLE TabelaB(
    Nome VARCHAR(100) NULL
)

INSERT INTO TabelaA VALUES('Pablo')
INSERT INTO TabelaA VALUES('João')
INSERT INTO TabelaA VALUES('Maria')
INSERT INTO TabelaA VALUES('Lucas')

INSERT INTO TabelaB VALUES('Julio')
INSERT INTO TabelaB VALUES('Maria')
INSERT INTO TabelaB VALUES('Lucas')
INSERT INTO TabelaB VALUES('Romero')

/* INNER JOIN */
SELECT a.Nome, b.Nome
FROM TabelaA as A 
INNER JOIN TabelaB as B
                on a.Nome = b.Nome

/* LEFT JOIN */
SELECT a.Nome, b.Nome
FROM TabelaA as A 
LEFT JOIN TabelaB as B
                on a.Nome = b.Nome

/* RIGHT JOIN */
SELECT a.Nome, b.Nome
FROM TabelaA as A
RIGHT JOIN TabelaB as B 
    on a.Nome = b.Nome

/* FULL OUTER JOIN */
SELECT a.Nome, b.Nome
FROM TabelaA as A 
FULL OUTER JOIN TabelaB as B
    on a.Nome = b.Nome

/* LEFT EXCLUDING JOIN */
SELECT a.Nome, b.Nome
FROM TabelaA as A 
LEFT JOIN TabelaB as B 
                on a.Nome = b.Nome
WHERE b.Nome is NULL

/* RIGHT EXCLUDING JOIN */
SELECT a.Nome, b.Nome
FROM TabelaA as A 
RIGHT JOIN TabelaB as B
    on a.Nome = b.Nome
WHERE a.Nome is NULL

/* OUTER EXCLUDING JOIN */
SELECT a.Nome, b.Nome
FROM TabelaA as A 
FULL OUTER JOIN TabelaB as B 
    on a.Nome = b.Nome
WHERE a.Nome is NULL or b.Nome is NULL

