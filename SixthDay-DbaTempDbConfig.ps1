# Get the TempDB config for your server
Test-DbaTempDbConfig -SqlInstance localhost\sql2014 | Out-GridView

# Set your TempDB 
Set-DbaTempDbConfig -SqlInstance localhost\sql2014 -DataFileCount 4 -DataFileSize 512