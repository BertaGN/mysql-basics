INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('1', '1993-09-13', 'Berta', 'Garcia', 'F', '2022-12-21'), ('2', '1987-01-27', 'Sergio', 'Clemente', 'M', '2022-12-21'), ('3', '1983-02-16', 'Kristian', 'Pulvanoski', 'M', '2022-12-21'), ('4', '2001-02-07', 'Javier', 'Vidal', 'M', '2022-12-21'), ('5', '1983-09-13', 'Miquel', 'Garcia', 'M', '2022-12-21'), ('6', '1987-06-22', 'Ferran', 'Planas', 'M', '2022-12-21'), ('7', '1995-05-08', 'Ynohe', 'Sandoval', 'M', '2022-12-21'), ('8', '1983-02-16', 'Manuel', 'Salvador', 'M', '2022-12-21'), ('9', '2000-01-14', 'Nuria', 'Fernandez', 'F', '2022-12-21'), ('10', '2001-02-07', 'Laura', 'Vidal', 'F', '2022-12-21'), ('11', '1983-09-13', 'Cristina', 'Kasimirov', 'F', '2022-12-21'), ('12', '1972-06-22', 'Victor', 'Jauregui', 'M', '2022-12-21'), ('13', '1983-02-16', 'Kristian', 'Pulvanoski', 'M', '2022-12-21'), ('14', '1983-02-16', 'Kristian', 'Pulvanoski', 'M', '2022-12-21'), ('15', '1983-02-16', 'Kristian', 'Pulvanoski', 'M', '2022-12-21')

INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('1', '50000', '2022-12-21', '2030-12-31'), ('2', '47000', '2022-12-21', '2030-12-31'), ('3', '5003', '2022-12-21', '2023-02-07'), ('4', '17000', '2022-12-21', '2030-12-25'), ('5', '50000', '2022-12-21', '2027-06-25'), ('6', '27000', '2022-12-21', '2025-11-14'), ('7', '50000', '2022-12-21', '2030-12-31'), ('8', '32000', '2022-12-21', '2015-03-19'), ('9', '22000', '2022-12-21', '2028-06-08'), ('10', '21000', '2022-12-21', '2025-03-18'), ('11', '38000', '2022-12-21', '2028-07-25'), ('12', '49999', '2022-12-21', '2030-12-24'), ('13', '21000', '2022-12-21', '2023-08-16'), ('14', '23000', '2022-12-21', '2028-05-06'), ('15', '27500', '2022-12-21', '2027-10-09')

INSERT INTO `departments` (`dept_no`, `dept_name`) VALUES ('3', 'Development'), ('1', 'Manager'), ('5', 'Marketing'), ('4', 'Production'), ('2', 'RH')

INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('1', '1', '2022-12-21', '2030-12-31'), ('1', '2', '2022-12-21', '2030-12-31'), ('2', '1', '2022-12-21', '2028-07-25'), ('2', '3', '2022-12-21', '2030-12-25'), ('3', '2', '2022-12-21', '2023-08-16'), ('3', '3', '2022-12-21', '2027-10-09'), ('3', '4', '2022-12-21', '2028-05-06'), ('5', '1', '2022-12-21', '2030-12-25'), ('5', '2', '2022-12-21', '2030-12-25'), ('7', '4', '2022-12-22', '2030-10-23'), ('7', '5', '2022-12-21', '2030-11-23'), ('8', '4', '2022-12-21', '2028-09-12'), ('8', '5', '2022-12-25', '2027-08-09'), ('9', '3', '2022-12-21', '2029-11-25'), ('9', '4', '2022-12-31', '2025-11-08'), ('12', '2', '2022-12-23', '2025-10-06'), ('12', '3', '2022-12-31', '2030-07-26'), ('12', '5', '2022-12-31', '2030-08-26'), ('13', '5', '2022-12-25', '2030-04-03'), ('14', '4', '2022-12-04', '2030-03-04')

INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('1', '1', '2022-12-22', '2030-12-31'), ('2', '1', '2022-12-21', '2030-12-31'), ('3', '1', '2022-12-31', '2030-12-31'), ('6', '1', '2022-12-21', '2030-12-25'), ('12', '1', '2022-12-31', '2030-12-25')

INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('1', 'Bachillerato', '2012-06-12', '2030-08-25'), ('2', 'Bachillerato', '2007-05-24', '2030-06-24'), ('3', 'Bachillerato', '2015-09-12', '2030-12-24'), ('5', 'Bachillerato', '2017-12-11', '2030-12-25'), ('12', 'Bachillerato', '2016-12-11', '2030-12-25')


UPDATE `employees` SET `first_name` = 'Christian' WHERE `employees`.`emp_no` = 13;

UPDATE `departments` SET `dept_name` = 'Publicidad' WHERE `departments`.`dept_no` = '3'; UPDATE `departments` SET `dept_name` = 'Medio Ambiente' WHERE `departments`.`dept_no` = '1'; UPDATE `departments` SET `dept_name` = 'Secretaria' WHERE `departments`.`dept_no` = '5'; UPDATE `departments` SET `dept_name` = 'Directores' WHERE `departments`.`dept_no` = '2';


SELECT emp_no,salary FROM `salaries` WHERE salary > 20000;

SELECT emp_no,salary FROM `salaries` WHERE salary < 10000;

SELECT emp_no,salary FROM `salaries` WHERE salary BETWEEN 14000 AND 50000;

SELECT COUNT(*) FROM `employees`;

SELECT emp_no, COUNT(*) FROM dept_emp GROUP BY emp_no HAVING COUNT(*) >1;

SELECT title as total FROM titles WHERE DATE(to_date) BETWEEN '2020-01-01' AND DATE_ADD('2020-01-01', INTERVAL 1 YEAR);

SELECT UPPER(first_name) FROM `employees`;

SELECT e.first_name, e.last_name, d.dept_no FROM employees e JOIN departments d;

SELECT employees.first_name, employees.last_name, COUNT(*) AS COUNT FROM employees JOIN dept_manager ON employees.emp_no = dept_manager.emp_no GROUP BY employees.emp_no;

SELECT DISTINCT first_name FROM employees;

DELETE FROM employees WHERE emp_no IN (SELECT emp_no FROM salaries WHERE salary > 20000);

DELETE FROM departments WHERE dept_no = (SELECT dept_no FROM dept_emp GROUP BY dept_no ORDER BY count(dept_no) desc limit 1);












