RESTORE FILELISTONLY from DISK = 'C:/backup/db.bak';
GO

RESTORE DATABASE ImportedDatabase
FROM DISK = 'C:/backup/db.bak'
WITH MOVE 'ImportedDatabase' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\ImportedDatabase.mdf',
MOVE 'ImportedDatabase_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\ImportedDatabase.log';
GO

SELECT name, database_id, create_date FROM sys.databases;
GO  