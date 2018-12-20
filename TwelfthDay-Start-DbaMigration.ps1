# Lets migrate 2017 to 2019
Start-DbaMigration -Source localhost\sql2016 -Destination localhost\sql2019 -BackupRestore `
     -SharedPath \\LXDW17181\C$\Temp\Backups -SetSourceReadOnly