CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);
SELECT * FROM student;


INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');
INSERT INTO student(name, major) VALUES('Claire', 'Chemistry');
INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Mike', 'Computer Science');

--Update and delete
UPDATE student
SET major = 'BIO'
WHERE major = 'Biology';

UPDATE student
SET major = 'Comp Sci'
WHERE major = 'Computer Science';

UPDATE student
SET major = 'Comp Sci'
WHERE student_id = 4;

UPDATE student
SET major = 'Biochemistry'
WHERE major = 'BIO' OR major = 'Chemistry';

UPDATE student
SET name = 'Tom', major = 'undecided'
WHERE student_id = 1;

UPDATE student
SET major = 'undecided';

-- delete all the table
DELETE FROM student;


DELETE FROM student
WHERE student_id = 5;

DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided';


--Delete table
DROP TABLE student;

-- BASIC QUERIES
SELECT student.name, student.major
FROM student
ORDER BY name DESC;

SELECT *
FROM student
ORDER BY major, student_id DESC;

SELECT *
FROM student
limit 2;

SELECT *
FROM student
ORDER BY student_id DESC
limit 2;

SELECT *
FROM student
WHERE major = 'Chemistry';

SELECT *
FROM student
WHERE major = 'Chemistry' OR major = 'Biology';

SELECT name, major
FROM student
WHERE major <> 'Chemistry';


-- where name is in these values
SELECT *
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike');

-- where major is in these values and student id is greater than 2
SELECT *
FROM student
WHERE major IN ('Biology', 'Chemistry') AND student_id > 2;
