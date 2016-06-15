-- Display a list of employees, who receive salary greater than the direct supervisor's salary
-- "who receive salary greater than the direct supervisor's salary" - are u seriously? :) This is impossible...
SELECT e1.`name`,
e1.salary
FROM employee e1
LEFT JOIN employee e2 ON e2.id = e1.chief_id
WHERE e1.salary > e2.salary

-- Display a list of employees, who receive the maximum salary in his department
SELECT e1.name, e1.salary
FROM employee e1
WHERE
  e1.salary IN (
    SELECT
      MAX(e2.salary)
    FROM employee e2
    WHERE e2.department_id = e1.department_id
    GROUP BY e2.department_id
  )

-- Display a list of departments sorted by total salary of employees in it, descending
SELECT d1.`name`,
SUM(e1.salary) as salSum
FROM employee e1
LEFT JOIN department d1 ON e1.department_id = d1.id
GROUP BY d1.id
ORDER BY salSum DESC

-- Display a list of employees, who have no subordinates working in the same department

-- Please, update existing table `employee`
UPDATE `employee` SET `chief_id`='1' WHERE (`id`='2');
UPDATE `employee` SET `chief_id`='2' WHERE (`id`='4');
UPDATE `employee` SET `chief_id`='3' WHERE (`id`='7');
UPDATE `employee` SET `chief_id`='11' WHERE (`id`='3');
UPDATE `employee` SET `chief_id`='5' WHERE (`id`='6');
UPDATE `employee` SET `chief_id`='7' WHERE (`id`='9');
UPDATE `employee` SET `chief_id`='6' WHERE (`id`='8');
UPDATE `employee` SET `chief_id`='12' WHERE (`id`='5');
-- and SELECT:
SELECT
e1.id,
e1.department_id as department,
e1.`name`,
e2.id as subId,
e2.department_id as subDepartment,
e2.`name` as subName
FROM `employee` e1
LEFT JOIN employee e2 ON e1.id = e2.chief_id
WHERE e2.id IS NOT NULL AND e1.department_id != e2.department_id