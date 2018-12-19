## Restore yesterday's backups 
Restore-DbaDatabase -SqlInstance localhost\sql2017 -Path C:\SQLData\Backups


## Restore custom dbatools databases
Restore-DbaDatabase -SqlInstance localhost\sql2017 -Path C:\SQLData\Backups -DatabaseName SQLcompliance -DestinationDataDirectory C:\SQLData `
    -DestinationLogDirectory C:\SQLData -DestinationFilePrefix dbatools_ -RestoredDatabaseNamePrefix dbatools_ 
