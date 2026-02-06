USE StudySubmitDb;
GO

CREATE VIEW vw_PublicStudents AS
SELECT StudentId, FirstName, LastName
FROM dbo.Students;

CREATE VIEW vw_ReportPassed AS
SELECT s.FirstName, COUNT(*) AS Passed
FROM dbo.Students s
JOIN dbo.Submissions sub ON s.StudentId = sub.StudentId
WHERE sub.Grade = 'G'
GROUP BY s.FirstName;
