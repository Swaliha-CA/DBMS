
DECLARE
    a NUMBER;
    b NUMBER;
    c NUMBER;
    
    PROCEDURE findmin(x IN NUMBER, y IN NUMBER, z OUT NUMBER) IS
    BEGIN
        IF x < y THEN
            z := x;
        ELSE
            z := y;
        END IF;
    END;
    
BEGIN
    a := 23;
    b := 45;
    findmin(a, b, c);
    dbms_output.put_line('The minimum value(23, 45) : ' || c);
END;
/


CREATE TABLE employee (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR(10),
    emp_department VARCHAR(10)
);

INSERT INTO employee (emp_id, emp_name, emp_department) VALUES (1, 'John', 'Sales');
INSERT INTO employee (emp_id, emp_name, emp_department) VALUES (2, 'Jane ', 'Marketing');
INSERT INTO employee (emp_id, emp_name, emp_department) VALUES (3, 'Jim ', 'HR');
INSERT INTO employee (emp_id, emp_name, emp_department) VALUES (4, 'Lucy ', 'IT');
INSERT INTO employee (emp_id, emp_name, emp_department) VALUES (5, 'David', 'Finance');


create or replace function total(employee return number is total number is total number(2):=0;
begin
    select count(*)into total from employee;
    return total
    END;
    /

        declare
c number(2);
begin
c:=total employee();
bms_output.put_line('The total no:of employees : ' || c);
END;
/

create table electricity(cons_id varchar(10) primary key,c_name varchar(20),rent number(2),check (rent=20),unit number(6));*/

INSERT INTO electricity (cons_id, c_name, rent, unit) VALUES ('C001', 'Alice', 20, 150);
INSERT INTO electricity (cons_id, c_name, rent, unit) VALUES ('C002', 'Bob', 20, 200);
INSERT INTO electricity (cons_id, c_name, rent, unit) VALUES ('C003', 'Charlie', 20, 250);
INSERT INTO electricity (cons_id, c_name, rent, unit) VALUES ('C004', 'Diana', 20, 300);
INSERT INTO electricity (cons_id, c_name, rent, unit) VALUES ('C005', 'Ethan', 20, 350);

alter table electricity add(total number(6,2));


DECLARE
    v_total electricity.total%TYPE;  
    CURSOR c IS SELECT * FROM electricity;  
BEGIN
    FOR i IN c LOOP  
     
        IF i.unit <= 40 THEN
            v_total := i.rent;  
        ELSIF i.unit <= 80 THEN
            v_total := i.rent + (i.unit - 40) * 0.40;  
        ELSE
            v_total := i.rent + (40 * 0.40) + (i.unit - 80) * 1.40; 
        END IF;

        
        UPDATE electricity
        SET total = v_total
        WHERE cons_id = i.cons_id;
    END LOOP;

    COMMIT; 
END;
/    
