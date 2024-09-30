USE school;
-- 1. Get all the student information from the student table.
SELECT * FROM Student;

-- 2. What are the names and meeting times of classes?
SELECT name, meets_at FROM Class;

-- 3. Who are the first three faculty members in the 'Faculty' table?
SELECT * FROM Faculty ORDER BY fid LIMIT 3;

-- 4. List all students (oldest student first).
SELECT * FROM Student ORDER BY age DESC;
-- Who is the oldest student?
SELECT * FROM Student ORDER BY age DESC LIMIT 1;
-- Who is the youngest student?
SELECT * FROM Student ORDER BY age ASC LIMIT 1;

-- 5. Which students have ‘CS’ as their majors?
SELECT * FROM Student WHERE major = 'CS';

-- 6. Which students are not majoring in CS?
SELECT * FROM Student WHERE major <> 'CS';

-- 7. Find classes in the 'Class' table with names containing the letter 'S'.
SELECT * FROM Class WHERE name LIKE '%S%';

-- 8. List all the classes that start after 5:00?
SELECT * FROM Class WHERE meets_at > '5:00:00';

-- 9. Show the names of students in the 'Student' table with names ending with 'th'.
SELECT * FROM Student WHERE sname LIKE '%th';

-- 10. How many students are enrolled in class10?
SELECT COUNT(*) FROM Enrolled WHERE cname = 'class10';

-- 11. Retrieve the names and ages of students from the 'Student' table whose ages are between 18 and 20 (inclusive).
SELECT sname, age FROM Student WHERE age BETWEEN 18 AND 20;