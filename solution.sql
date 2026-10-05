
CREATE TABLE StudentDetails_Student (
StudentID INT,
StudentName VARCHAR(30),
DepartmentID INT
);
CREATE TABLE StudentDetails_Course (
CourseID INT,
CourseName VARCHAR(30)
);

CREATE TABLE StudentDetails_Enrollment (
EnrollmentID INT,
StudentID INT,
CourseID INT
);

INSERT INTO StudentDetails_Student VALUES
(1001, 'Arun', 101),
(1002, 'Divya', 102),
(1003, 'Karthik', 101);

INSERT INTO StudentDetails_Course VALUES
(201, 'Database Systems'),
(202, 'Data Structures'),
(203, 'Mathematics');

INSERT INTO StudentDetails_Enrollment VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 203);

CREATE TABLE DepartmentDetails (
DepartmentID INT,
DepartmentName VARCHAR(30)
);

INSERT INTO DepartmentDetails VALUES
(101, 'Computer Science'),
(102, 'Mathematics');

CREATE VIEW StudentDetails AS
SELECT s.StudentName,
c.CourseName,
d.DepartmentName
FROM StudentDetails_Student s
JOIN StudentDetails_Enrollment e
ON s.StudentID = e.StudentID
JOIN StudentDetails_Course c
ON e.CourseID = c.CourseID
JOIN DepartmentDetails d
ON s.DepartmentID = d.DepartmentID;

SELECT * FROM StudentDetails;
