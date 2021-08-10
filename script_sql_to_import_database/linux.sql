RESTORE FILELISTONLY from DISK = '/var/opt/mssql/backup/db.bak';
GO

RESTORE DATABASE ImportedDatabase
FROM DISK = '/var/opt/mssql/backup/db.bak'
WITH MOVE 'ImportedDatabase' TO '/var/opt/mssql/data/ImportedDatabase.mdf',
MOVE 'ImportedDatabase_log' TO '/var/opt/mssql/data/ImportedDatabase.log';
GO

SELECT name, database_id, create_date FROM sys.databases;
GO  