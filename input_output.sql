set serveroutput on;
declare
v_first_name varchar2(100);
v_employee_id varchar2(100);
begin
    v_employee_id:=149;
    select first_name into v_first_name from employees where employee_id=v_employee_id;
   
    employee_message(v_employee_id,v_first_name);
    dbms_output.put_line(v_first_name);
end;
