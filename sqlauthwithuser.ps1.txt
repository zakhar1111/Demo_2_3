# SQL Authentiaction enable
$registryPath = 'HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQLServer'

$Name = "LoginMode"

$value = "2"
Set-ItemProperty -Path $registryPath -Name $name -Value $value

#  add sql user with sysadmin role


$SqlServer = "localhost"
 
Add-Type -Path "C:\Program Files\Microsoft SQL Server\140\SDK\Assemblies\Microsoft.SqlServer.Smo.dll"
 
$SqlServer = New-Object Microsoft.SqlServer.Management.Smo.Server($SqlServer)
 
# get all of the current logins and their types
#$SqlServer.Logins |
    #Select-Object Name, LoginType, Parent
 
# create a new login
$NewLogin = New-Object Microsoft.SqlServer.Management.Smo.Login($SqlServer, 'sqladmin')
$NewLogin.LoginType = [Microsoft.SqlServer.Management.Smo.LoginType]::SqlLogin
$NewLogin.Create('P2ssw0rd@123')
$NewLogin.AddToRole("sysadmin")