USE StudySubmitDb;
GO

CREATE ROLE report_reader;

CREATE USER report_user WITHOUT LOGIN;

ALTER ROLE report_reader ADD MEMBER report_user;

GRANT SELECT ON vw_PublicStudents TO report_reader;
GRANT SELECT ON vw_ReportPassed TO report_reader;
