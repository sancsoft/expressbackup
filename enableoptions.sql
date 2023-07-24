-- enableoptions.sql
-- Run this on the server to enable the options required for running the expressmaint stored
-- procedure.

use master
GO

exec sp_configure 'show advanced options',1
reconfigure
go
exec sp_configure 'xp_cmdshell',1
reconfigure
go
exec sp_configure 'Ole Automation Procedures',1
reconfigure
go
