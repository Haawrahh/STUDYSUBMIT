USE StudySubmitDb;
GO

CREATE TABLE dbo.Students (
    StudentId INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE dbo.Courses (
    CourseId INT IDENTITY(1,1) PRIMARY KEY,
    CourseName NVARCHAR(100) NOT NULL
);

CREATE TABLE dbo.Enrollments (
    EnrollmentId INT IDENTITY(1,1) PRIMARY KEY,
    StudentId INT NOT NULL,
    CourseId INT NOT NULL,
    CONSTRAINT FK_Enrollments_Student FOREIGN KEY (StudentId) REFERENCES dbo.Students(StudentId),
    CONSTRAINT FK_Enrollments_Course FOREIGN KEY (CourseId) REFERENCES dbo.Courses(CourseId),
    CONSTRAINT UQ_Enrollments UNIQUE (StudentId, CourseId)
);

CREATE TABLE dbo.Assignments (
    AssignmentId INT IDENTITY(1,1) PRIMARY KEY,
    CourseId INT NOT NULL,
    Title NVARCHAR(100) NOT NULL,
    CONSTRAINT FK_Assignments_Course FOREIGN KEY (CourseId) REFERENCES dbo.Courses(CourseId)
);

CREATE TABLE dbo.Submissions (
    SubmissionId INT IDENTITY(1,1) PRIMARY KEY,
    AssignmentId INT NOT NULL,
    StudentId INT NOT NULL,
    SubmittedAt DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
    Grade CHAR(2) NULL,
    CONSTRAINT FK_Submissions_Assignment FOREIGN KEY (AssignmentId) REFERENCES dbo.Assignments(AssignmentId),
    CONSTRAINT FK_Submissions_Student FOREIGN KEY (StudentId) REFERENCES dbo.Students(StudentId),
    CONSTRAINT CHK_Submissions_Grade CHECK (Grade IS NULL OR Grade IN ('IG','G')),
    CONSTRAINT UQ_Submissions UNIQUE (AssignmentId, StudentId)
);
