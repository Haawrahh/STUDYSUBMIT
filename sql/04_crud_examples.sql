USE StudySubmitDb;
GO

-- INSERT
INSERT INTO dbo.Students (FirstName, LastName, Email)
VALUES ('Kalle','Karlsson','kalle@test.se');

-- SELECT
SELECT * FROM dbo.Students;

-- UPDATE
UPDATE dbo.Students
SET LastName = 'Karlsson-Updated'
WHERE Email = 'kalle@test.se';

-- DELETE
DELETE FROM dbo.Students
WHERE Email = 'kalle@test.se';
