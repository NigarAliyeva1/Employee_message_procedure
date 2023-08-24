create or replace procedure employee_message(p_employee_id number,p_message in out varchar2) is
v_first_name varchar2(100);
begin
 select first_name into v_first_name from employees where employee_id=p_employee_id;
    p_message:='Welcome, '||p_message;
end;
