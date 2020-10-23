create or replace TRIGGER update_job_history
  AFTER UPDATE OF job_id, department_id ON employees
  FOR EACH ROW
    
BEGIN
  add_job_history(:old.employee_id, :old.hire_date, sysdate,
                  :old.job_id, :old.department_id, :new.department_id, :new.salary, :old.salary);
     
    DBMS_OUTPUT.PUT_LINE('Aumento foi de: '|| (:new.salary - :old.salary));
    DBMS_OUTPUT.PUT_LINE('Empregado: ' || :new.employee_id);
    DBMS_OUTPUT.PUT_LINE('Dep Antigo: ' || :old.department_id);

END;