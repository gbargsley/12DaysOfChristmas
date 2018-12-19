# Lets backup all databases
Backup-DbaDatabase -SqlInstance localhost\sql2017 -BackupDirectory '\\lxdw17181\c$\SQLData\Backups' -Database 

Backup-DbaDatabase -SqlInstance localhost\sql2017 -BackupDirectory '\\lxdw17181\c$\SQLData\Backups' -Database AdventureWorks2014 

Backup-DbaDatabase -SqlInstance localhost\sql2017 -BackupDirectory '\\lxdw17181\c$\SQLData\Backups' -Type Log 


# Just backup databases that start with SQL
$Databases = Find-DbaDatabase -SqlInstance localhost\sql2017 -Pattern SQL 
Backup-DbaDatabase -SqlInstance localhost\sql2017 -Database $Databases.Name -BackupDirectory '\\lxdw17181\c$\SQLData\Backups'