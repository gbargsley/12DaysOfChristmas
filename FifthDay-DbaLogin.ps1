# Get a list of logins on a SQL Server instance
Get-DbaLogin -SqlInstance localhost\sql2017 | Out-GridView

# Lets copy logins from one server to another
Copy-DbaLogin -Source localhost\sql2016 -Destination localhost\sql2017

# Save logins to a TSQL file
Export-DbaLogin -SqlInstance localhost\sql2016 -Path C:\Temp\sql2016_Logins.sql

