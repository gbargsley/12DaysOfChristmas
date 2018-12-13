# Get a list of Agent Alerts from your SQL Server
Get-DbaAgentAlert -SqlInstance localhost\sql2017 | Out-GridView

# Disable Alerts
Get-DbaAgentAlert -SqlInstance localhost\sql2017 | Where-Object IsEnabled -EQ $true | Set-DbaAgentAlert -Disabled
