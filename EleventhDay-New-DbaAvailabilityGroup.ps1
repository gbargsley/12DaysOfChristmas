# Create a new AG from scratch
New-DbaAvailabilityGroup -Primary REGDBADBS01A -Secondary REGDBADBS01B `
    -Name dbatools_AG -ClusterType Wsfc -AutomatedBackupPreference Primary `
    -Database dbatools -SharedPath \\REGDBADBS01A\S$\Backups `
    -FailoverMode Automatic -AvailabilityMode SynchronousCommit `
    -Confirm:$false

# Now lets add a manual / async node and then the database
Get-DbaAvailabilityGroup -SqlInstance REGDBADBS01A -AvailabilityGroup dbatools_AG |
Add-DbaAgReplica -SqlInstance REGDBADBS01A -Name REGDBADBS01D `
    -AvailabilityMode AsynchronousCommit -FailoverMode Manual -Verbose
Add-DbaAgDatabase -AvailabilityGroup dbatools_aG -Database dbatools `
    -Secondary REGDBADBS01D -SharedPath '\\REGDBADBS01A\S$\Backups' -Verbose

# Lets Change our Failover and Sync modes
Set-DbaAgReplica -SqlInstance REGDBADBS01A -Replica REGDBADBS01B `
     -AvailabilityGroup dbatools_AG -AvailabilityMode AsynchronousCommit `
     -FailoverMode Manual