USE StudySubmitDb;
GO

-- JOIN
SELECT s.FirstName, c.CourseName
FROM dbo.Students s
JOIN dbo.Enrollments e ON s.StudentId = e.StudentId
JOIN dbo.Courses c ON e.CourseId = c.CourseId;

-- GROUP BY
SELECT c.CourseName, COUNT() AS Students
FROM dbo.Courses c
JOIN dbo.Enrollments e ON c.CourseId = e.CourseId
GROUP BY c.CourseName;

-- WHERE + ORDER BY
SELECT FROM dbo.Submissions
WHERE Grade = 'G'
ORDER BY SubmittedAt DESC;

-- Rapport: flest godkända per student
SELECT s.FirstName, COUNT(*) AS Passed
FROM dbo.Students s
JOIN dbo.Submissions sub ON s.StudentId = sub.StudentId
WHERE sub.Grade = 'G'
GROUP BY s.FirstName
ORDER BY Passed DESC;
