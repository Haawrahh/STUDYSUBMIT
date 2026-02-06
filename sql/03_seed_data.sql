USE StudySubmitDb;
GO

INSERT INTO dbo.Students (FirstName, LastName, Email) VALUES
('Anna','Andersson','anna@test.se'),
('Bo','Berg','bo@test.se'),
('Cecilia','Carlsson','cecilia@test.se'),
('David','Dahl','david@test.se'),
('Eva','Ek','eva@test.se'),
('Filip','Fors','filip@test.se'),
('Gina','Gran','gina@test.se'),
('Hugo','Holm','hugo@test.se'),
('Ida','Ivarsson','ida@test.se'),
('Johan','Jönsson','johan@test.se');

INSERT INTO dbo.Courses (CourseName) VALUES
('Databaser'),
('Programmering'),
('Webbutveckling'),
('AI-intro'),
('Systemdesign'),
('Testning');

INSERT INTO dbo.Enrollments (StudentId, CourseId) VALUES
(1,1),(1,2),(2,1),(3,2),(4,3),(5,4),
(6,5),(7,6),(8,1),(9,2),(10,3),
(2,3),(3,4),(4,5),(5,6),
(6,1),(7,2),(8,3),(9,4),(10,5),
(1,6),(2,5),(3,1),(4,2),(5,3);

INSERT INTO dbo.Assignments (CourseId, Title) VALUES
(1,'SQL Basics'),
(1,'Joins'),
(2,'C# Intro'),
(3,'HTML Page'),
(4,'AI Essay'),
(5,'Architecture Doc'),
(6,'Unit Tests');

INSERT INTO dbo.Submissions (AssignmentId, StudentId, Grade) VALUES
(1,1,'G'),(1,2,'IG'),(1,8,'G'),
(2,1,'G'),(2,3,'G'),
(3,3,'IG'),(3,9,'G'),
(4,4,'G'),(4,10,'IG'),
(5,5,'G'),(5,7,'G'),
(6,6,'IG'),(6,2,'G'),
(7,7,'G'),(7,5,'IG');
