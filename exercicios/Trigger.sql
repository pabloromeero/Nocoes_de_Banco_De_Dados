CREATE OR REPLACE TRIGGER Atualiza_salario_func
    BEFORE DELETE OR INSERT OR UPDATE ON funcionario
    FOR EACH ROW
  WHEN (NEW.CODFUNC > 0)
  DECLARE
      diferenca_salario number;
  BEGIN
      diferenca_salario  := :NEW.SALARIOFUNC  - :OLD.SALARIOFUNC;
      dbms_output.put('Salário antigo:' || :OLD.salarioFunc);
      dbms_output.put('Salário novo:' || :NEW.salarioFunc);
      dbms_output.put_line(' A diferença de salário foi de: ' || diferenca_salario);
  END;
  /
