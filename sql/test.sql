-- 2
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
