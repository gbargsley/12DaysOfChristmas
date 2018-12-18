# Get a list of tables and their current compression setting
Get-DbaDbCompression -SqlInstance localhost\sql2017 -Database AdventureWorks2014 | Out-GridView

# Find out what the best compression option is for your table(s)
Test-DbaDbCompression -SqlInstance localhost\sql2017 -Database AdventureWorks2014 | Out-GridView

Set-DbaDbCompression -SqlInstance localhost\sql2017 -Database AdventureWorks2014 