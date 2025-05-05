-- Adds a new campus located in Uppsala, Sweden
INSERT INTO campus (location, address, phone_number, email)
VALUES ('Uppsala', 'Drottninggatan 7, 753 10 Uppsala', '018123456', 'uppsala@yh.se');

SELECT
    campus_id, location, address
FROM
    campus;


-- Shows each program with the number of courses assigned to it
SELECT
    p.program_name AS "Program",
    COUNT(pc.course_id) AS "Number of courses"
FROM
    programs p
    LEFT JOIN program_course pc ON p.program_id = pc.program_id
GROUP BY
    p.program_name
ORDER BY
    "Number of courses" DESC;


-- Shows each student and the class they are enrolled in
SELECT 
  s.first_name || ' ' || s.last_name AS "Student",
  cl.class_name AS "Class"
FROM 
    students s
    JOIN class_student cs ON s.student_id = cs.student_id
    JOIN classes cl ON cs.class_id = cl.class_id
ORDER BY
    "Student"
LIMIT 10;


-- Shows how many distinct courses each teacher is assigned to
SELECT 
  e.first_name || ' ' || e.last_name AS "Teacher",
  COUNT(DISTINCT ta.course_id) AS "Number of courses"
FROM teaching_assignments ta
JOIN employees e ON ta.employee_id = e.employee_id
GROUP BY e.employee_id, e.first_name, e.last_name
ORDER BY "Number of courses" DESC;


-- Instructors teaching more than 2 courses
SELECT 
  e.first_name || ' ' || e.last_name AS "Teachers",
  (
    SELECT COUNT(DISTINCT ta.course_id)
    FROM teaching_assignments ta
    WHERE ta.employee_id = e.employee_id
  ) AS "Number of courses"
FROM employees e
WHERE (
  SELECT COUNT(DISTINCT ta.course_id)
  FROM teaching_assignments ta
  WHERE ta.employee_id = e.employee_id
) > 1
ORDER BY "Number of courses" DESC;