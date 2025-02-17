@echo off
setlocal EnableDelayedExpansion

set questions[1]=What does the "/D" switch do in the XCOPY command?
set answers[1]=Copies files changed on or after the specified date

set questions[2]=How do you use a conditional statement to compare two strings in a batch file?
set answers[2]=IF string1==string2 command

set questions[3]=What is the purpose of the "FOR /F" command in a batch file?
set answers[3]=To loop through command output, strings, or files

set questions[4]=How do you concatenate two strings in a batch file?
set answers[4]=set result=%string1%%string2%

set questions[5]=What is the purpose of the "NET USER" command in CMD?
set answers[5]=To manage user accounts on a computer or domain

set questions[6]=How do you perform a string substitution in a batch file?
set answers[6]=set string=!string:old=new!

set questions[7]=Which command is used to list all installed services on a Windows system?
set answers[7]=sc query

set questions[8]=What is the purpose of the "REG QUERY" command?
set answers[8]=To display the contents of the registry

set questions[9]=How do you check for an empty string in a batch file?
set answers[9]=IF "string"=="" command

set questions[10]=What is the purpose of the "osql" command in SQL Server?
set answers[10]=To execute SQL queries and scripts

set questions[11]=How do you export a SQL Server database to a .bak file using a batch script?
set answers[11]=sqlcmd -S server -U user -P password -Q "BACKUP DATABASE db TO DISK='path\file.bak'"

set questions[12]=How do you create a scheduled task using a batch file?
set answers[12]=schtasks /create /tn "task name" /tr "path\to\script.bat" /sc schedule

set questions[13]=What is the purpose of the "sqlcmd" utility in SQL Server?
set answers[13]=To execute T-SQL commands, scripts, and queries from the command line

set questions[14]=How do you retrieve the list of databases in MySQL using a batch script?
set answers[14]=mysql -u user -p -e "SHOW DATABASES;"

set questions[15]=What is the purpose of the "bcp" command in SQL Server?
set answers[15]=To bulk copy data between a database and a data file

set questions[16]=How do you read the output of a command into a variable in a batch file?
set answers[16]=FOR /F "tokens=* delims=" %%i IN ('command') DO set variable=%%i

set questions[17]=How do you create a full-text index on a table column in SQL Server?
set answers[17]=CREATE FULLTEXT INDEX ON table(column) KEY INDEX index_name

set questions[18]=What is the purpose of the "xp_cmdshell" extended stored procedure in SQL Server?
set answers[18]=To execute a command shell command from within SQL Server

set questions[19]=How do you import data from a CSV file into a SQL Server table using a batch script?
set answers[19]=bcp db.schema.table in "path\file.csv" -c -t, -S server -U user -P password

set questions[20]=What is the purpose of the "sp_configure" system stored procedure in SQL Server?
set answers[20]=To view or change server-level settings

:quiz
for /L %%i in (1,1,20) do (
    set /p "answer=%%i. !questions[%%i]! "
    if "!answer!"=="!answers[%%i]!" (
        echo Correct!
    ) else (
        echo Incorrect. The correct answer is "!answers[%%i]!".
    )
)

endlocal
pause
