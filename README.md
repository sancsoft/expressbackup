# expressbackup

Automated backup for MS-SQL Server on Windows

ExpressBackup uses the expressmaint stored procedure developed by Jasper Smith.  Unfortunately, his
www.sqldbatips.com website is defunct and now redirects to a pr0n site.  

The stored procedure requires expanded access rights on the server including xp_cmdshell and Ole Automation 
Procedures.  A script to update the server configuraiton with support is included in enableoptions.sql.

The expressmaint.sql script may be used to create the stored procedure. Create the stored procedure in the
master database.

A batch file is used and run as a Scheduled Task on Windows to perform the backups on the desired schedule. The
userfullbackup.bat file is an example that is paird with the UserFullBackup.sql script.  The sql script 
includes the parameters that are passed to the stored procedure.

Fields that require update in the files are shown in {brackets}.  Both userfullbackup.bat and UserFullBackup.sql
need to be properly configured for the hosting location.  Technically, the backup process can be run on a server 
with only network connectivity to the server backuped up, but normally the job is scheduled and run on the
databsae server.

The stored procedure is well documented and describes the options that can be passed to control operation.
