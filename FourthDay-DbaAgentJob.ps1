# Get list of Agent Jobs from a server
Get-DbaAgentJob -SqlInstance localhost\sql2016 | Out-GridView

# Export a list of jobs to a sql file
Get-DbaAgentJob -SqlInstance localhost\sql2016 | Export-DbaScript -Path C:\temp\jobs.sql
Start-Process C:\Temp\jobs.sql

# Find an Agent Job across multiple servers
Find-DbaAgentJob -SqlInstance localhost\sql2014, localhost\sql2016, localhost\sql2017 -JobName 'Test Job'| Out-GridView