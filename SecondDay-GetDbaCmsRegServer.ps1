## View Servers from a CMS
Get-DbaCmsRegServer -SqlInstance 'localhost\sql2017'

## Load lists of Servers into a variable from a CMS
$RegisteredServers = Get-DbaCmsRegServer -SqlInstance 'localhost\sql2017'
Get-DbaBuildReference -SqlInstance $RegisteredServers



