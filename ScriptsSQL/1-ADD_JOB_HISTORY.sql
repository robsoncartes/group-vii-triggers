alter table job_history add (sal_old number(8, 2), new_department_id number(4, 0),
    new_job_id varchar2(10), sal_new number(8, 2)
);

create or replace PROCEDURE add_job_history
  (  p_emp_id          job_history.employee_id%type
   , p_start_date      job_history.start_date%type
   , p_end_date        job_history.end_date%type
   , p_job_id          job_history.job_id%type
   , p_new_job_id       job_history.new_job_id%type
   , p_department_id   job_history.department_id%type
   , p_new_department_id job_history.new_department_id%type
   , p_new_salary job_history.sal_new%type
   , p_old_salary job_history.sal_old%type
   )
IS
BEGIN
  INSERT INTO job_history (employee_id, start_date, end_date,
                           job_id, department_id, new_department_id, 
                           sal_new, sal_old, new_job_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id, 
    p_new_department_id, p_new_salary, p_old_salary, p_new_job_id);
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        UPDATE job_history
        SET end_date=p_end_date, department_id=p_department_id, 
            new_department_id=p_new_department_id,
            job_id=p_job_id, new_job_id=p_new_job_id,
            sal_old=p_old_salary, sal_new=p_new_salary
        WHERE employee_id=p_emp_id;
END add_job_history;