INSERT INTO ALUNO (DATA_NASCIMENTO) VALUE (VARCHAR(10) NOT NULL);

ALTER TABLE ALUNO CHANGE COLUMN TELEFONE CONTATO VARCHAR NOT NULL;

INSERT INTO LIVRO (ISBN) VALUE (INT (13));

DROP TABLE ISBN FROM LIVRO;
